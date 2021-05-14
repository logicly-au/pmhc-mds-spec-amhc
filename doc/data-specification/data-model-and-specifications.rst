.. _data-model-and-specifications:

Data model and specifications
=============================

Adult Mental Health Centres (AMHC) is an extension of the Primary Mental
Health Care Minimum Data Set (PMHC MDS); the current PMHC MDS Data model and
specification rules may apply. These are available to be viewed at
https://docs.pmhc-mds.com/data-specification/index.html.

.. _data-model:

Data model
----------

.. _data-model-diagram:

.. figure:: figures/data-model.svg
   :alt: AMHC & PMHC data model

   AMHC data model *within the PMHC MDS*

.. _record-formats:

Record formats
--------------

.. _pmhc-data-elements:

PMHC MDS record formats
^^^^^^^^^^^^^^^^^^^^^^^

As AMHC is an extension of the Primary Mental Health Care Minimum Data
Set (PMHC MDS), the current PMHC MDS Data model and specification record
formats are available to be viewed at
https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#record-formats.

AMHC record formats
^^^^^^^^^^^^^^^^^^^

AMHC adds the following records on top of PMHC MDS current specifications:

- See :ref:`Intake data specifications <intake-data-elements>`.
- See :ref:`Intake Collection Occasion data specifications <intake-collection-occasion-data-elements>`.
- See :ref:`AMHC-Episode data specifications <amhc-episode-data-elements>`.
- See :ref:`Collection Occasion data specifications <collection-occasion-data-elements>` for Collection Occasions.
- See :ref:`IAR-DST Measure data specifications <iar-dst-data-elements>`.
- See :ref:`AMHC-Service Contact data specifications <amhc-service-contact-data-elements>` for Service Contact Data.

When uploading PMHC clients at the same time as AMHC clients, the
following records will also need to be supplied. **NB. These record
specifications are different to the standard PMHC specifications. The
AMHC upload format separates collection occasion data into a separate
Collection Occasion worksheet so that multiple measures can be collected at a
single collection occasion. The AMHC upload format aligns with a future
PMHC MDS Version 3.0 file format. No date has been set for the release of the
PMHC MDS Version 3.0 upload file format.**

- See :ref:`K10+ Measure data specifications <k10p-data-elements>`.
- See :ref:`K5 Measure data specifications <k5-data-elements>`.
- See :ref:`SDQ Measure data specifications <sdq-data-elements>`.
- See :ref:`Service Contact data specifications <service-contact-data-elements>`.

.. _metadata-data-elements:

Metadata
$$$$$$$$

The Metadata table must be included in file uploads in order to identify
the type and version of the uploaded data.

.. csv-table:: Metadata record layout
   :file: record/metadata.csv
   :header-rows: 1

For this version of the specification the required content is shown in the
following table:

+--------------+------------+
| key          | value      |
+--------------+------------+
| type         | AMHC       |
+--------------+------------+
| version      | 3          |
+--------------+------------+

.. _provider-organisation-data-elements:

Provider Organisation
$$$$$$$$$$$$$$$$$$$$$

Same as standard `PMHC MDS Provider Organisation <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#provider-organisation-data-elements>`_.

----------

.. _practitioner-data-elements:

Practitioner
$$$$$$$$$$$$

Practitioners are managed by the hub organisations via upload or data entry.
The practitioner record is the same as standard
`PMHC MDS Practitioner <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#practitioner-data-elements>`_.

No practitioner records should be provided in the intake context.

----------

.. _client-data-elements:

Client
$$$$$$

Clients are managed by the intake and hub organisations via upload or data entry.
The client record is the same as standard
`PMHC MDS Client <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#client-data-elements>`_.

----------

.. _intake-data-elements:

Intake
$$$$$$

Intakes are managed by the intake organisations via upload or
data entry.

No intake records should be provided in the hub context.

.. csv-table:: Intake record layout
   :file: record/intake.csv
   :header-rows: 1

----------

.. _intake-collection-occasion-data-elements:

Intake Collection Occasion
$$$$$$$$$$$$$$$$$$$$$$$$$$

See :ref:`key-concepts-collection-occasion` for definition of a
collection occasion.

Intake Collection occasions are managed by the intake organisations via upload or
data entry.

No intake collection occasion records should be provided in the hub context.

.. csv-table:: Intake record layout
   :file: record/intake-collection-occasion.csv
   :header-rows: 1

----------

.. _episode-data-elements:

Episode
$$$$$$$

See :ref:`key-concepts-episode` for definition of an episode.

Episodes are managed by the hub organisations via upload or
data entry. The episode record is the same as standard PMHC.

No episode records should be provided in the intake context.

.. csv-table:: Episode record layout
   :file: record/episode.csv
   :header-rows: 1

----------

.. _amhc-episode-data-elements:

AMHC Episode
$$$$$$$$$$$$

AMHC Episodes are managed by the hub provider organisations via upload or
data entry.

Where available, the :ref:`dfn-intake_organisation_path` and
:ref:`dfn-intake_episode_key` provide a link back to the intake record at the
intake organisation.

.. csv-table:: AMHC Episode record layout
  :file: record/amhc-episode.csv
  :header-rows: 1

----------

.. _service-contact-data-elements:

Service Contact
$$$$$$$$$$$$$$$

See :ref:`key-concepts-service-contact` for definition of a service contact.

Service contacts are managed by the hub organisations via upload or
data entry.

No service contacts should be provided in the intake context.

.. csv-table:: Service Contact record layout
  :file: record/service-contact.csv
  :header-rows: 1

----------

.. _amhc-service-contact-data-elements:

AMHC Service Contact
$$$$$$$$$$$$$$$$$$$$

See :ref:`key-concepts-service-contact` for definition of a service contact.

AMHC Service Contacts are managed by the hub organisations via
upload or data entry.

No AMHC Service Contacts should be provided in the intake context.

.. csv-table:: AMHC Service Contact record layout
  :file: record/amhc-service-contact.csv
  :header-rows: 1

----------

.. _collection-occasion-data-elements:

Collection Occasion
$$$$$$$$$$$$$$$$$$$

See :ref:`key-concepts-collection-occasion` for definition of a
collection occasion.

Collection occasions are managed by the hub organisations via upload or
data entry.

.. csv-table:: Collection Occasions record layout
  :file: record/collection-occasion.csv
  :header-rows: 1

----------

.. _iar-dst-data-elements:

IAR-DST Measure
$$$$$$$$$$$$$$$

IAR-DST measures are managed by the intake organisations via upload or data entry.

No IAR-DST measures should be provided in the hub context. The IAR-DST will be
available from the linked intake record.

.. include:: include/table/measure/iar-dst-measure.rst

.. csv-table:: IAR-DST record layout
  :file: record/iar-dst-measure.csv
  :header-rows: 1

----------

.. _k10p-data-elements:

K10+ Measure
$$$$$$$$$$$$

**Please note:** The format for reporting the K10+ with AMHC data is different than
for standard PMHC MDS as explained at :ref:`amhc-base-version`.

K10+ measures are managed by the hub organisation via upload or data entry.

No K10+ measures should be provided in the intake context.

.. csv-table:: K10+ record layout
  :file: record/k10p-measure.csv
  :header-rows: 1

----------

.. _k5-data-elements:

K5 Measure
$$$$$$$$$$

**Please note:** The format for reporting the K5 with AMHC data is different than
for standard PMHC MDS as explained at :ref:`amhc-base-version`.

K5 measures are managed by the hub organisation via upload or data entry.

No K5 measures should be provided in the intake context.

.. csv-table:: K5 record layout
  :file: record/k5-measure.csv
  :header-rows: 1

----------

.. _sdq-data-elements:

SDQ Measure
$$$$$$$$$$$

**Please note:** The format for reporting the SDQ with AMHC data is different than
for standard PMHC MDS as explained at :ref:`amhc-base-version`.

SDQ measures are managed by the hub organisation via upload or data entry.

No SDQ measures should be provided in the intake context.

.. csv-table:: SDQ record layout
  :file: record/sdq-measure.csv
  :header-rows: 1

----------

.. _amhc-definitions-data-elements:

AMHC definitions
----------------

.. include:: include/definitions.rst


.. _data-specifications-download:

Download specification files
----------------------------

.. This is a comment. Is this required? (Will probably need a dev to assist)

Available for software developers designing extracts for AMHC, please
click the link below to download AMHC Specification files for the PMHC MDS:

* :download:`AMHC Specification zip </_static/amhc-spec-meta.zip>`
