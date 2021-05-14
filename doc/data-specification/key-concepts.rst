.. _key-concepts:

Key concepts
============

Below is a list of key words that are commonly used within the PMHC MDS and their definitions.
If you require more information, please click on the linked text to see the relevant
data elements field definition as shown under Specifications.

.. _key-concepts-pmhc-mds:

PMHC MDS
--------

As AMHC is an extension of the Primary Mental Health Care Minimum Data Set (PMHC MDS)
the current PMHC MDS Key terms will be used. These are also available to be viewed at
https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#key-concepts.


.. _key-concepts-primary-health-network:

Primary Health Network
----------------------

Primary Health Networks (PHNs) have been established by the Australian Government
with the key objectives of increasing the efficiency and effectiveness of
medical services for patients, particularly those at risk of poor health
outcomes, and improving coordination of care to ensure patients receive the
right care in the right place at the right time.


.. _key-concepts-provider-organisation:

Provider Organisation
---------------------

The Provider Organisation is the business entity that the PHN has commissioned
to provide the service.


.. _key-concepts-practitioner:

Practitioner
------------

The Practitioner is the person who is delivering the service.


.. _key-concepts-client:

Client
------

The Client (patient) is the person who is receiving the service.


.. _key-concepts-episode:

Episode
-------

For the purposes of the PMHC MDS, an *Episode of Care* is defined as a more or
less continuous period of contact between a client and a PHN-commissioned
provider organisation/clinician that starts at the point of first contact, and
concludes at discharge. Episodes comprise a series of one or more Service
Contacts. This structure allows for a logical data collection protocol that
specifies what data are collected when, and by whom. Different sets of PMHC MDS
items are collected at various points in the client’s engagement with the
provider organisation. Some items are only collected once at the episode level,
while others are collected at each *Service Contact*.

Three business rules apply to how the *Episode of Care* concept is implemented
across PHN-commissioned services:

- **One episode at a time for each client, defined at the level of the provider
  organisation**

  While an individual may have multiple *Episodes of Care* over the course of
  their illness, they may be considered as being in only one episode at any
  given point of time for **any particular PHN-commissioned provider
  organisation**. The implication is that the care provided by the
  organisation to an individual client at any point in time is subject to only
  one set of reporting requirements.

- **Episodes commence at the point of first contact.** The episode start date
  will be derived from the first service contact date.

- **Discharge from care concludes the episode**

  Discharge may occur clinically or administratively in instances where contact
  has been lost with the client. A new episode is deemed to commence if the
  person re-presents to the organisation.


.. _key-concepts-amhc-episode:

AMHC-Episode
------------

AMHC-Episode is the record format for collecting AMHC episode data.

See :ref:`amhc-episode-data-elements` for the data elements for AMHC-Episode.

.. _key-concepts-service-contact:

Service Contact
---------------

Service Contact data linked to an :ref:`key-concepts-episode` will be used in AMHC.

.. _key-concepts-collection-occasion:

Collection Occasion
-------------------

A Collection Occasion is defined as an occasion during an Episode of Care when
specific Service Activities are required to be collected. At a minimum, collection
is required at both Episode Start and Episode End.

AMHC will allow the following data records to be collected at a collection occasion:

* :ref:`iar-dst-data-elements`

See :ref:`collection-occasion-data-elements` data elements.
