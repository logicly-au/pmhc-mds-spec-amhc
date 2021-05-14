.. _amhc-introduction:

Introduction
============

The recording of AMHC activity in the PMHC MDS will be implemented as an
extension to the as yet unreleased core PMHC-MDS version 3 specification. This
is to minimise the amount of work required to implement a AMHC-usable MDS.

The extension will comprise 5 new tables with new fields, and a small number
of additions to existing fields in existing record types.

The new tables are :ref:`intake-data-elements`,
:ref:`intake-collection-occasion-data-elements`,
:ref:`amhc-episode-data-elements`,
:ref:`amhc-service-contact-data-elements`, and
:ref:`iar-dst-data-elements`.

There are two contexts collecting AMHC data - the AMHC Intake teams and the AMHC hubs.
Different records in the extension are intended to be used in both of these contexts.

Within the PMHC-MDS system a single intake team and individual hubs
will each have their own organisation path and report data against those
organisations. It is noted that some AMHC hubs may be existing provider
organisations within the PMHC-MDS. The AMHC extension is compatible
with this reality.

In the Intake context the following records will need to be provided:
* `Client <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#client-data-elements>`_,
* :ref:`intake-data-elements`
* :ref:`intake-collection-occasion-data-elements`
* :ref:`iar-dst-data-elements`

Episode and Service contact activity is not submitted in this context.

In the hub context the extension specification works almost the same as a
service reporting via the core PMHC-MDS specification using the extension
fields to identify additional detail regarding referrals in from the
AMHC intake teams (:ref:`dfn-intake_organisation_path` and :ref:`dfn-intake_episode_key`),
referrals out to additional services (:ref:`dfn-referral_out_organisation_type`), and
the involvement of additional practitioners involved in service
contacts (:ref:`dfn-service_contact_practitioner_category`) which allows
multiple endorsements.

.. _amhc-introduction-intake:

AMHC Intake
~~~~~~~~~~~

The model requires a new :ref:`intake-data-elements` record for every intake process.

The :ref:`intake-data-elements` table comprises records information about the
intake.

:ref:`dfn-organisation_path` and :ref:`dfn-intake_key` are the
two fields required to link the hub episode at the hub provider organisation
back to the intake record at the intake organisation.

The values of these fields should be passed along by the intake organisation
to the hub organisation where the hub organisation will use them to fill in
:ref:`dfn-intake_organisation_path` and :ref:`dfn-intake_episode_key`. This will
then link the intake record at the intake organisation with the AMHC Episode
record at the hub organisation.

.. _amhc-introduction-episode:

AMHC Episode
~~~~~~~~~~~~

When the client is referred to a PMHC MDS reporting service (either an AMHC hub
or an AMHC non-hub) a new :ref:`episode-data-elements` record is created like
any other PMHC funded episode.

Where the service is an AMHC hub an additional :ref:`amhc-episode-data-elements`
record is also created.

The :ref:`amhc-episode-data-elements` table comprises a composite foreign key to link it
back to a standard episode record on which all the standard information is
recorded plus three new fields.

1. The identifier of the intake team (:ref:`dfn-intake_organisation_path`)
2. The episode identifier of the intake team (:ref:`dfn-intake_episode_key`)
3. The organisation(s) to which the organisation (intake team or hub) refers
   the client (:ref:`dfn-referral_out_organisation_type`)

.. _amhc-introduction-service-contact:

AMHC Service Contact
~~~~~~~~~~~~~~~~~~~~

This new record type is pertinent only to hub activity.
The :ref:`amhc-service-contact-data-elements`
extends the existing Service Contact record with two new fields:

1. A multi choice :ref:`dfn-service_contact_practitioner_category`, which
   allows the type of professionals used in multidisciplinary teams to be
   recorded against a contact
2. The time that the contact started (:ref:`dfn-service_contact_start_time`)

The :ref:`dfn-service_contact_practitioner_category` field is in addition to
the standard PHMC MDS field for identifying a specific practitioner. The
standard model only allows a single practitioner to be recorded against a
contact. The extended process still requires identification of a single
practitioner (intended to be the ‘main’ one) but also allows capturing
the discipline(s) of other practitioners who might be involved. The
discipline (practitioner type) of the main practitioner is already stored
on an existing table and does not need to be added to the new practitioner
categories field.

:ref:`dfn-service_contact_start_time` is intended to enable identification of
activity undertaken during extended hours.

.. _amhc-introduction-iar-dst:

IAR-DST Measure
~~~~~~~~~~~~~~~

A new record type is required to capture the domains and the recommended
level of care pertinent to the IAR-DST that clients have completed for them
as part of the AMHC intake process. A new :ref:`iar-dst-data-elements` record, and
corresponding intake collection occasion record, will be created for each intake process.

Consistent with the existing measures in the MDS, the domain scores will be
captured as well as the recommended level of care. The purpose of collecting
both domain scores and recommended level of care is to:

* allow verification of IAR-DST scoring processes, thereby catching scoring
  implementation errors early should they arise, and
* provide a resource that can be used to better understand how the IAR-DST
  scoring algorithm performs in real world environments supporting ongoing
  improvement of the tool.


Data release and confidentiality
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All data collection and reporting requirements are required to comply with
relevant Commonwealth, State and Territory Information Privacy and Health
Records regulations. Clients will be informed that some de-identified portions of the
information collected through the AMHC Service will be utilised
for Commonwealth, State and Territory planning and statistical purposes.
Appropriate consent and ethics approval processes will be adhered to.
