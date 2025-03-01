.. _validation-rules:

Validation rules
================

AMHC is an extension of the Primary Mental Health Care Minimum Data Set (PMHC MDS);
the current PMHC MDS Validations rules apply. These are available to be viewed at
https://docs.pmhc-mds.com/data-specification/validation-rules.html.

This document defines validation rules between AMHC items and record types.
The domain of individual AMHC items is defined in :ref:`record-formats`.

.. _current-amhc-validations:

Current AMHC validations
------------------------

1. Intake
~~~~~~~~~

.. _intake-current-validations:

1. The :ref:`dfn-outcome_date` must not be before the :ref:`dfn-contact_date`
2. The :ref:`dfn-outcome_date` must not be before the :ref:`dfn-referral_date`
3. :ref:`dfn-referrer_organisation_type` must be set to
   '98: N/A - Self referral' if and only if :ref:`dfn-referrer_profession` is also
   '98: N/A - Self referral'
4. A maximum of one intake shall be open per client
5. Where the
   :ref:`dfn-outcome` has been recorded using one of the
   'Intake closed' responses (Response items 1 and 2), the intake must have
   an :ref:`dfn-outcome_date`, and/or intakes that have an
   :ref:`dfn-outcome_date` must have an :ref:`dfn-outcome`
   recorded using one of the 'Intake closed' responses (Response items 1 and 2)
6. The :ref:`dfn-outcome_date`

   * must not be before 1 January 2020
   * and must not be before `Provider Organisation - Start Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-start-date>`_
   * and must not be after `Provider Organisation - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-end-date>`_
   * and must not be in the future

7. The :ref:`dfn-referral_date`

   * must not be before 1 January 2020
   * and must not be before `Provider Organisation - Start Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-start-date>`_
   * and must not be after `Provider Organisation - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-end-date>`_
   * and must not be in the future

.. _intake-collection-occasion-current-validations:

2. Intake Collection Occasion
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. :ref:`dfn-intake_key` must be an existing PMHC intake within the PMHC MDS.
2. The :ref:`dfn-collection_occasion_date`

   * must not be before 1 January 2020
   * and must not be before `Episode - Referral Date <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#episode-referral-date>`_
   * and must not be before `Provider Organisation - Start Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-start-date>`_
   * and must not be after `Episode - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#episode-end-date>`_
   * and must not be after `Provider Organisation - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-end-date>`_
   * and must not be in the future

.. _iar-dst-current-validations:

3. IAR-DST
~~~~~~~~~~

1. :ref:`dfn-intake_collection_occasion_key` must be an existing Intake
   Collection Occasion within the PMHC MDS.
2. Both all 8 domains and the level of care must be provided.
3. The level of care must be consistent with the 8 domain scores provided.

.. _amhc-episode-current-validations:

4. AMHC - Episode
~~~~~~~~~~~~~~~~~

1. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS.
2. ``!amhc`` tag should be included in the
   `Episode - Tags <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#episode-tags>`_
   field of the corresponding PMHC episode, otherwise the system will
   automatically include it.
3. If a :ref:`dfn-intake_organisation_path` is specified, that organisation must
   be an existing organisation within the PMHC MDS.
4. If a :ref:`dfn-intake_key` is specified, a :ref:`dfn-intake_organisation_path`
   must also be specified.
5. :ref:`dfn-referral_out_organisation_type` is a multivalued field.

   * Multivalued fields can not have duplicates, For example, ``1 1 1`` is not allowed.
   * If ``0: None/Not applicable`` is provided, no other values are permitted.

.. _collection-occasion-current-validations:

5. Collection Occasion
~~~~~~~~~~~~~~~~~~~~~~

1. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS.
2. The :ref:`dfn-collection_occasion_date`

   * must not be before 1 January 2016
   * and must not be before `Episode - Referral Date <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#episode-referral-date>`_
   * and must not be before `Provider Organisation - Start Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-start-date>`_
   * and must not be after `Episode - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#episode-end-date>`_
   * and must not be after `Provider Organisation - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-end-date>`_
   * and must not be in the future

.. _k10p-current-validations:

6. K10+
~~~~~~~

1. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
   MDS.
2. If both item scores and a total score are specified, the item scores must
   add up to the total score (as per :ref:`Scoring the K10+ <dfn-k10p_score>`).

.. _k5-current-validations:

7. K5
~~~~~

1. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
   MDS.
2. If both item scores and a total score are specified, the item scores must
   add up to the total score (as per :ref:`Scoring the K5 <dfn-k5_score>`).

.. _sdq-current-validations:

8. SDQ
~~~~~~

1. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
   MDS.
2. Use the table at :ref:`SDQ Data Elements <sdq-data-elements>` to validate the items that
   are used in each version of the SDQ
3. If both item scores and subscales are specified, the sum of the items
   must agree with the subscales score (as per `Scoring the SDQ <https://docs.pmhc-mds.com/projects/data-specification/en/v2/data-model-and-specifications.html#scoring-the-sdq>`_)
4. If both subscales and total score are specified, the sum of the subscales
   must agree with the total score (as per `Scoring the SDQ <https://docs.pmhc-mds.com/projects/data-specification/en/v2/data-model-and-specifications.html#scoring-the-sdq>`_)

.. _amhc-service-contact-current-validations:

9. AMHC - Service Contact
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. :ref:`dfn-service_contact_practitioner_category` is a multivalued field.

   * Multivalued fields can not have duplicates, For example, ``1 1 1`` is not allowed.
   * If ``0: None/Not applicable`` is provided, no other values are permitted.

.. _current-pmhc-validations:

Current PMHC validations
------------------------

AMHC is an extension of the Primary Mental Health Care Minimum Data Set (PMHC MDS);
the current PMHC MDS Validations rules may apply, depending on how you add your
AMHC data. The current PMHC MDS validations rules are available to be viewed at
https://docs.pmhc-mds.com/data-specification/validation-rules.html.
