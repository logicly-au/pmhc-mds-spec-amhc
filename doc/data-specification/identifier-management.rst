.. _identifier_management:

Identifier management
=====================

AMHC is an extension of the Primary Mental Health Care Minimum Data Set (PMHC MDS);
the current PMHC MDS Identifier Management rules apply. These are available to be viewed at
https://docs.pmhc-mds.com/data-specification/identifier-management.html.

.. _identifier_managing_keys:

Managing keys
-------------

The :ref:`dfn-collection_occasion_key` and
:ref:`dfn-measure_key` will be created and managed by Provider Organisations.

The PMHC MDS specification requires each of these keys to be unique and stable
at the Provider Organisation level. See above links for the specification requirements
for these data elements:

Each record needs to be assigned a unique key in order to facilitate adding/updating/deleting
each item when uploading/entering data. These keys will be created and managed by
the Provider Organisation.

Where data is being exported from client systems, these keys can be auto generated,
providing that a key does not change once it is assigned.

.. _identifier_pmhc_episode_keys:

Managing PMHC MDS Episode Key
-----------------------------

Each AMHC Episode record needs to record the corresponding :ref:`PMHC MDS episode key <dfn-episode_key>`
in order to link it to an existing episode within the PMHC data and facilitate
adding/updating/deleting each item when uploading/entering AMHC data.

See below links for the specification requirements for these data elements:
 - :ref:`dfn-episode_key`

.. _identifier_pmhc_amhc_episode_tag:

Identifying AMHC-Episode data records
-------------------------------------------

To enable the PMHC MDS to add a AMHC-Episode record to a PMHC Episode, the '**!amhc**'
tag must be included on the 'Tags' field of all hub episode data records. If not
included, the system will automatically include it.

For users inputting data through the PMHC-MDS data entry interface adding this
tag will enable the additional AMHC specific data entry elements.

For users uploading data where the tag is not included but the upload includes
the additional AMHC records, the system will automatically add the tag.
