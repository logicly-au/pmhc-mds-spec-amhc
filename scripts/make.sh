#!/bin/bash

# Exit if anything errors
set -e

source doc/version.conf
export SPEC_VERSION

source config.sh

if [[ -z $RECORD_MATCH ]]; then
  RECORD_MATCH=".*"
fi

docker pull docker.sdlocal.net/csvw/metadata2rst:latest
docker pull stratdat/sphinx:production
docker pull stratdat/sphinx-html2pdf:production


docker run --rm -v `pwd`:/mnt/cwd docker.sdlocal.net/csvw/metadata2rst:latest \
  --meta=${METADATA_FILE} \
  --record_match "${RECORD_MATCH}"

# make zip file
scripts/metadata2zip.sh ${SPEC_ZIP_FILE}
# mv new zip to data-specification folder
mv ${SPEC_ZIP_FILE} doc/_static/

pushd .
cd doc

rm -rf data-specification/_data data-specification/include/table build
cp -rf ../data data-specification/_data
cp -rf ../table data-specification/include/table

GIT_VERSION=$(git describe --tags --always)

echo "Building PDF"
docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx:production make singlehtml

popd

echo "Optimising images"
docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  --workdir /mnt/workdir/doc/build/singlehtml/_images \
  stratdat/sphinx-html2pdf:production \
  find . -name *.png -exec pngquant --force --output {} 8 {} \;

docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx-html2pdf:production \
  /mnt/workdir/scripts/make-pdf.pl \
  --spec-name "${SPEC_NAME}-${SPEC_VERSION}" \
  --doc-dir   "/mnt/workdir/doc"

pushd .
cd doc

docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx:production make html

popd
