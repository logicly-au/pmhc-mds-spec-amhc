Definitions
-----------

.. _dfn-service_contact_practitioner_category:

AMHC - Service Contact - Practitioner Category
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The types or categories of the practitioners, as represented by a set of codes.

:Field name: service_contact_practitioner_category

:Data type: string

:Required: yes

:Domain:
  :0: None
  :1: Clinical Psychologist
  :2: General Psychologist
  :3: Social Worker
  :4: Occupational Therapist
  :5: Mental Health Nurse
  :6: Aboriginal and Torres Strait Islander Health/Mental Health Worker
  :7: Low Intensity Mental Health Worker
  :8: General Practitioner
  :9: Psychiatrist
  :10: Other Medical
  :11: Other
  :12: Psychosocial Support Worker
  :13: Peer Support Worker
  :99: Not stated
  
  Multiple space separated values allowed
  
:Notes:
  Practitioner Category is a multi choice field which allows the type of
  professionals used in multidisciplinary teams to be recorded against a contact.
  
  The Practitioner Category field is in addition to
  the standard PHMC MDS field for identifying a specific practitioner. The
  standard model only allows a single practitioner to be recorded against a
  contact. The extended process still requires identification of a single
  practitioner (intended to be the ‘main’ one) but also allows capturing
  the discipline(s) of other practitioners who might be involved. The
  discipline (practitioner type) of the main practitioner is already stored
  on an existing table and does not need to be added to the new practitioner
  categories field.
  

----------

.. _dfn-service_contact_start_time:

AMHC - Service Contact - Start Time
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The start time of each mental health service contact between a health service provider and patient/client.

:Field name: service_contact_start_time

:Data type: time

:Required: yes
:Notes:
  Notes: Indicates the time at which the Service Contact began. Time should be
  recorded in 24-hour time in the format HH:MM. Leading zeroes are accepted but
  not required. For example, 8:30 in the morning could be 8:30 or 08:30 and 3:45
  in the afternoon would be 15:45.
  

----------

.. _dfn-client_key:

Client Key
^^^^^^^^^^

This is a number or code assigned to each individual referred to the commissioned organisation. The client identifier is unique and stable for each individual at the level of the PMHC top level organisation.

:Field name: client_key

:Data type: string [2,50]

:Required: yes

----------

.. _dfn-collection_occasion_date:

Collection Occasion - Date
^^^^^^^^^^^^^^^^^^^^^^^^^^

The date of the collection occasion.

:Field name: collection_occasion_date

:Data type: date [dMMyyyy]

:Required: yes
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  If the date the activity was performed is unknown, 09099999 should be used.
  
  - For and intake collection occasion, the collection date must not be
    before 1st January 2020, otherwise, the collection date must not be before
    1st January 2016.
  
  - The collection date must not be in the future.
  

----------

.. _dfn-reason_for_collection:

Collection Occasion - Reason
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The reason for the collection of the service activities on the identified Collection Occasion.

:Field name: reason_for_collection

:Data type: string

:Required: yes

:Domain:
  :1: Episode start
  :2: Review
  :3: Episode end
:Notes:
  *Intake Context*
  
  In the intake context, only response *1 - Episode start* may be used.
  
  1 - Episode start
    Refers to a service activity undertaken at the beginning of an Episode of
    Care. For the purposes of the PMHC MDS protocol, episodes may start at the
    point of first Service Contact with a new client who has not been seen
    previously by the organisation, or a first contact for a new Episode of
    Care for a client who has received services from the organisation in a
    previous Episode of Care that has been completed.
  
  *Hub Context*
  
  In the hub context, all responses may be used.
  
  1 - Episode start
    Refers to a service activity undertaken at the beginning of an Episode of
    Care. For the purposes of the PMHC MDS protocol, episodes may start at the
    point of first Service Contact with a new client who has not been seen
    previously by the organisation, or a first contact for a new Episode of
    Care for a client who has received services from the organisation in a
    previous Episode of Care that has been completed.
  
  2 - Review
    Refers to a service activity undertaken during the course of an Episode of
    Care that post-dates Episode Start and pre-dates Episode End. A service
    activity may be undertaken at Review for a number of reasons including:
  
    - in response to critical clinical events or changes in the client’s mental
      health status;
    - following a client-requested review; or
    - other situations where a review may be indicated.
  
  3 - Episode end
    Refers to the service activities collected at the end of an Episode of Care.
  

----------

.. _dfn-collection_occasion_tags:

Collection Occasion - Tags
^^^^^^^^^^^^^^^^^^^^^^^^^^

List of tags for the collection occasion.

:Field name: collection_occasion_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-collection_occasion_key:

Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each collection occasion of service activities. The Collection Occasion Key is unique and stable for each collection occasion at the level of the organisation.

:Field name: collection_occasion_key

:Data type: string [2,50]

:Required: yes
:Notes:
  Collection occasion keys are case sensitive and must be valid unicode characters.
  

----------

.. _dfn-additional_diagnosis:

Episode - Additional Diagnosis
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The main additional condition or complaint co-existing with the Principal Diagnosis or arising during the episode of care.

:Field name: additional_diagnosis

:Data type: string

:Required: yes

:Domain:
  :000: No additional diagnosis
  :100: Anxiety disorders (ATAPS)
  :101: Panic disorder
  :102: Agoraphobia
  :103: Social phobia
  :104: Generalised anxiety disorder
  :105: Obsessive-compulsive disorder
  :106: Post-traumatic stress disorder
  :107: Acute stress disorder
  :108: Other anxiety disorder
  :200: Affective (Mood) disorders (ATAPS)
  :201: Major depressive disorder
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :300: Substance use disorders (ATAPS)
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Other drug harmful use
  :304: Other drug dependence
  :305: Other substance use disorder
  :400: Psychotic disorders (ATAPS)
  :401: Schizophrenia
  :402: Schizoaffective disorder
  :403: Brief psychotic disorder
  :404: Other psychotic disorder
  :501: Separation anxiety disorder
  :502: Attention deficit hyperactivity disorder (ADHD)
  :503: Conduct disorder
  :504: Oppositional defiant disorder
  :505: Pervasive developmental disorder
  :506: Other disorder of childhood and adolescence
  :601: Adjustment disorder
  :602: Eating disorder
  :603: Somatoform disorder
  :604: Personality disorder
  :605: Other mental disorder
  :901: Anxiety symptoms
  :902: Depressive symptoms
  :903: Mixed anxiety and depressive symptoms
  :904: Stress related
  :905: Other
  :999: Missing
:Notes:
  Additional Diagnosis gives information on conditions that are significant in
  terms of treatment required and resources used during the episode of care.
  Additional diagnoses should be interpreted as conditions that affect client
  management in terms of requiring any of the following:
  
  -	Commencement, alteration or adjustment of therapeutic treatment
  -	Diagnostic procedures
  -	Increased clinical care and/or monitoring
  
  Where the client one or more comorbid mental health conditions in addition to
  the condition coded as the Principal Diagnosis, record the main condition as
  the Additional Diagnosis. 
  
  The following responses have been added to allow mapping of ATAPS data to PMHC
  format.
  
  - 100: Anxiety disorders (ATAPS)
  - 200: Affective (Mood) disorders (ATAPS)
  - 300: Substance use disorders (ATAPS)
  - 400: Psychotic disorders (ATAPS)
  
  *Note: These four codes should only be used for Episodes that are migrated
  from ATAPS MDS sources that cannot be described by any other Diagnosis.
  It is expected that the majority of Episodes delivered to clients
  from 1st July, 2017 can be assigned to other diagnoses.*
  
  These responses will only be allowed on episodes where the original
  ATAPS referral date was before 1 July 2017
  
  These responses will only be allowed on episodes with the !ATAPS flag.
  
  For further notes on the recording of diagnosis codes see Principal Diagnosis.
  

----------

.. _dfn-client_postcode:

Episode - Area of usual residence, postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode of the client.

:Field name: client_postcode

:Data type: string

:Required: yes
:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown or the client
  has not provided sufficient information to confirm their current residential
  address.
  
  The full list of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  When collecting the postcode of a person's usual place of residence, the ABS
  recommends that 'usual' be defined as: 'the place where the person has or
  intends to live for 6 months or more, or the place that the person regards as
  their main residence, or where the person has no other residence, the place
  they currently reside.'
  
  Postcodes are deemed valid if they are in the range 0200-0299, 0800-9999.
  

:Source: `METeOR ID 429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-client_consent:

Episode - Client Consent to Anonymised Data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication that the client has consented to their anonymised data being provided to the Department of Health for statistical purposes in planning and improving mental health services.

:Field name: client_consent

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
:Notes:
  1 - Yes
      The client has consented to their anonymised data being provided to the
      Department of Health for statistical purposes in planning and improving
      mental health services. The client's data will be included in reports and
      extracts accessible by the Department of Health.
  
  2 - No
      The client has not consented to their anonymised data being provided to the
      Department of Health for statistical purposes in planning and improving
      mental health services. The client's data will be excluded from reports and
      extracts accessible by the Department of Health.
  
  All data can be uploaded, regardless of consent flag.
  
  All data will be available to PHNs to extract for their own internal data evaluation purposes.
  

----------

.. _dfn-episode_completion_status:

Episode - Completion Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of the completion status of an *Episode of Care*.

:Field name: episode_completion_status

:Data type: string

:Required: no

:Domain:
  :0: Episode open
  :1: Episode closed - treatment concluded
  :2: Episode closed administratively - client could not be contacted
  :3: Episode closed administratively - client declined further contact
  :4: Episode closed administratively - client moved out of area
  :5: Episode closed administratively - client referred elsewhere
  :6: Episode closed administratively - other reason
:Notes:
  *Intake Context*
  
  1 - Episode closed - treatment concluded
    The client has been discharged not requiring service.
  
  5 - Episode closed administratively - client referred elsewhere
    Client was referred to a clinic.
  
  *Hub Context*
  
  In order to use code 1 (Episode closed - treatment concluded) the client must
  have at least one service contact. All other codes may be applicable even
  when the client has no service contacts.
  
  0 or Blank - Episode open
    The client still requires treatment and further service contacts are
    required.
  
  1 - Episode closed - treatment concluded
    No further service contacts are planned as the client no longer requires
    treatment.
  
  2 - Episode closed administratively - client could not be contacted
    Further service contacts were planned but the client could no longer be
    contacted.
  
  3 - Episode closed administratively - client declined further contact
    Further service contacts were planned but the client declined further treatment.
  
  4 - Episode closed administratively - client moved out of area
    Further service contacts were planned but the client moved out of the area
    without a referral elsewhere. Where a client was referred somewhere else
    *Episode Completion Status* should be recorded as code 5 (Episode closed
    administratively - client referred elsewhere).
  
  5 - Episode closed administratively - client referred elsewhere
    Where a client still requires treatment, but a different service has been
    deemed appropriate or a client has moved out of the area so has moved to a
    different provider.
  
  6 - Episode closed administratively - other reason
    Where a client is no longer being given treatment but the reason for
    conclusion is not covered above.
  
  *Both Contexts*
  
  *Episode Completion Status* interacts with two other data items in the
  PMHC MDS - *Service Contact - Final*, and *Episode End Date*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact -
    Final* item that requires the service provider to indicate whether further
    Service Contacts are planned. Where this item is recorded as 'no further
    services planned', the *Episode Completion Status* should be recorded as code
    1 (Episode closed - treatment concluded) code 3 (Episode closed
    administratively - client declined further contact), code 4 (Episode closed
    administratively - client moved out of area), or code 5 (Episode closed
    administratively - client referred elsewhere). Selection of coding option
    should be that which best describes the circumstances of the episode ending.
  
  *Episode End Date*
    Where a Final Service Contact is recorded *Episode End Date* should be
    recorded as the date of the final Service Contact.
  

----------

.. _dfn-continuity_of_support:

Episode - Continuity of Support
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Is the client a Continuity of Support Client?

:Field name: continuity_of_support

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Not stated/inadequately described
:Notes:
  *Introduced 1 July 2019*
  
  Similar challenges to Psychosocial Support are faced with the Continuity of
  Support initiative. The important issues here are:
  
  * The proposed changes to be made for the Psychosocial Support measure should
    accommodate most requirements for Continuity of Support clients.
  * The one important difference is that CoS clients are a highly specific
    cohort – those currently in Commonwealth funded PIR, PHaMS and D2DL measures
    found to be ineligible for the NDIS.  These clients should be readily identified.
  * CoS clients need to have a marker in the PMHC MDS data that allows the cohort
    to be identified for separate reporting.
  
  1 - Yes
    The person was a client of the Personal Helpers and Mentors (PHaMs),
    Partners In recovery (PIR) and/or Day to Day Living (D2DL) programs and has
    been found to be ineligible for the National Disability Insurance Scheme
    (NDIS).
  
  2 - No
  
  9 - Not stated/inadequately described
  
  It is expected that most **new clients** recorded as CoS clients will have
  their episodes classified as Psychosocial Support.
  
  For existing clients who have an active (not closed) episode of care who
  become CoS clients after 1 July 2019, there is no need to close the current
  episode.  PHNs may however wish to change the Principal Focus of Treatment
  Plan to Psychosocial Support if this better reflects the overall episode goals.
  Alternatively, PHNs may choose to close the existing episode and commence a
  new episode.  This decision can be made locally.
  
  Services delivered under the new CoS arrangements should be coded as
  Psychosocial Support in the Service Contact Type field. This is not intended
  to restrict CoS clients to only Psychosocial Support services.  Contact Types
  delivered to CoS clients can vary across the full range (e.g., they could
  receive psychological therapy-type service contacts).  However, where services
  are delivered under the CoS arrangements it is essential that they be coded
  as  Psychosocial Support contacts to enable monitoring and reporting of the
  new CoS measure.
  
  As the new measure does not commence until 1 July 2019, all clients in
  active episodes prior to that date should be coded as ‘No’.  This will be
  implemented by Strategic Data in the PMHC MDS as a system-wide change for all
  existing clients in active episodes as at 30 June 2019.  Changes made to those
  existing clients from 1 July 2019 can then be made locally.
  

----------

.. _dfn-employment_participation:

Episode - Employment Participation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person in paid employment is employed full-time or part-time, as represented by a code.

:Field name: employment_participation

:Data type: string

:Required: yes

:Domain:
  :1: Full-time
  :2: Part-time
  :3: Not applicable - not in the labour force
  :9: Not stated/inadequately described
:Notes:
  Applies only to people whose labour force status is employed. (See metadata
  item Labour Force Status, for a definition of 'employed'). Paid employment
  includes persons who performed some work for wages or salary, in cash or in
  kind, and persons temporarily absent from a paid employment job but who
  retained a formal attachment to that job.
  
  1 - Full-time
    Employed persons are working full-time if they:
    (a) usually work 35 hours or more in a week (in all paid jobs) or
    (b) although usually working less than 35 hours a week, actually worked 35
    hours or more during the reference period.
  
  2 - Part-time
    Employed persons are working part-time if they usually work less than 35
    hours a week (in all paid jobs) and either did so during the reference
    period, or were not at work in the reference period.
  
  9 - Not stated / inadequately described
    Is not to be used on primary collection forms. It is primarily for use in
    administrative collections when transferring data from data sets where the
    item has not been collected.
  

:Source: `METeOR ID 269950 <http://meteor.aihw.gov.au/content/index.phtml/itemId/269950>`__

----------

.. _dfn-episode_end_date:

Episode - End Date
^^^^^^^^^^^^^^^^^^

The date on which an *Episode of Care* is formally or administratively ended

:Field name: episode_end_date

:Data type: date [dMMyyyy]

:Required: no
:Notes:
  *Intake Context*
  
  In the AMHC intake context, the Episode End Date must be recorded as the
  date when the referral is sent to the clinic.
  
  *Both Intake and Hub Contexts*
  
  - The episode end date must not be before 1st January 2016.
  
  - The episode end date must not be in the future.
  
  An *Episode of Care* may be ended in one of two ways:
  
  - clinically, consequent upon conclusion of treatment for the client and
    discharge from care; or
  
  - administratively (statistically), where contact with the client has been lost
    by the organisation prior to completion of treatment or other factors
    prevented treatment being completed.
  
  *Episode End Date* interacts with two other data items in the PMHC MDS - *Service
  Contact - Final*, and *Episode Completion Status*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact - Final*
    item that requires the service provider to indicate whether further *Service
    Contacts* are planned. Where this item is recorded as ‘no further services
    planned’, the date of the final *Service Contact* should be recorded as the
    *Episode End Date*.
  
  *Episode Completion Status*
    This field should be recorded as 'Episode closed treatment concluded' when a
    *Service Contact - Final* is recorded. The *Episode Completion Status* field
    can also be manually recorded to allow for administrative closure of episodes
    (e.g., contact has been lost with a client over a prolonged period - see
    *Episode Completion Status* for additional guidance). Where an episode is
    closed administratively, the *Episode End Date* should be recorded as the
    date on which the organisation made the decision to close episode.
  

:Source: `METeOR ID 614094 <http://meteor.aihw.gov.au/content/index.phtml/itemId/614094>`__

----------

.. _dfn-mental_health_treatment_plan:

Episode - GP Mental Health Treatment Plan Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether a client has a GP mental health treatment plan. A GP should be involved in a referral where appropriate however a mental health treatment plan is not mandatory.

:Field name: mental_health_treatment_plan

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :3: Unknown
  :9: Not stated/inadequately described

----------

.. _dfn-health_care_card:

Episode - Health Care Card
^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether the person is a current holder of a Health Care Card that entitles them to arrange of concessions for Government funded health services.

:Field name: health_care_card

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :3: Not Known
  :9: Not stated
:Notes:
  Details on the Australian Government Health Care Card are available at:
  https://www.humanservices.gov.au/customer/services/centrelink/health-care-card
  

:Source: `METeOR ID 605149 <http://meteor.aihw.gov.au/content/index.phtml/itemId/605149>`__

----------

.. _dfn-homelessness:

Episode - Homelessness Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether the client has been homeless in the 4 weeks prior to the current service episode.

:Field name: homelessness

:Data type: string

:Required: yes

:Domain:
  :1: Sleeping rough or in non-conventional accommodation
  :2: Short-term or emergency accommodation
  :3: Not homeless
  :9: Not stated / Missing
:Notes:
  1	- Sleeping rough or in non-conventional accommodation
    Includes sleeping on the streets, in a park, in cars or railway carriages,
    under bridges or other similar ‘rough’ accommodation
  
  2	- Short-term or emergency accommodation
    Includes sleeping in short-term accommodation, emergency accommodation, due
    to a lack of other options. This may include refuges; crisis shelters; couch
    surfing; living temporarily with friends and relatives; insecure
    accommodation on a short term basis; emergency accommodation arranged in
    hotels, motels etc by a specialist homelessness agency.
  
  3	- Not homeless
    Includes sleeping in own accommodation/rental accommodation or living with
    friends or relatives on a stable, long term basis
  
  9	- Not stated / Missing
    Not stated / Missing
  
  Select the code that best fits the client’s sleeping arrangements over the
  preceding 4 weeks. Where multiple options apply (e.g., client has experienced
  more than one of the sleeping arrangements over the previous 4 weeks) the
  following coding hierarchy should be followed:
  
  - If code 1 applied at any time over the 4 week period, code 1
  - If code 2 but not code 1 applied at any time over the 4 week period, code 2
  - Otherwise Code 3 applies
  

----------

.. _dfn-episode_key:

Episode Key
^^^^^^^^^^^

This is a number or code assigned to each episode. The Episode Key is unique and stable for each episode at the level of the organisation.

:Field name: episode_key

:Data type: string [2,50]

:Required: yes
:Notes:
  Episode Keys must be generated by the organisation to be unique at the provider
  organisation level and must persist across time. Creation of episode keys in
  this way allows clients to be merged (where duplicate Client Keys have been
  identified) without having to re-allocate episode identifiers since they can
  never clash.
  
  A recommended approach for the creation of Episode Keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-labour_force_status:

Episode - Labour Force Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The self-reported status the person currently has in being either in the labour force (employed/unemployed) or not in the labour force, as represented by a code.

:Field name: labour_force_status

:Data type: string

:Required: yes

:Domain:
  :1: Employed
  :2: Unemployed
  :3: Not in the Labour Force
  :9: Not stated/inadequately described
:Notes:
  1 - Employed
    Employed persons are those aged 15 years and over who met one of the following
    criteria during the reference week:
  
    - Worked for one hour or more for pay, profit, commission or payment in kind,
      in a job or business or son a farm (employees and owner managers of
      incorporated or unincorporated enterprises).
    - Worked for one hour or more without pay in a family business or on a farm
      (contributing family workers).
    - Were employees who had a job but were not at work and were:
  
      - away from work for less than four weeks up to the end of the reference
        week; or
      - away from work for more than four weeks up to the end of the reference
        week and
      - received pay for some or all of the four week period to the end of the
        reference week; or
      - away from work as a standard work or shift arrangement; or
      - on strike or locked out; or
      - on workers’ compensation and expected to return to their job.
    - Were owner managers who had a job, business or farm, but were not at work.
  
  2 - Unemployed
    Unemployed persons are those aged 15 years and over who were not employed
    during the reference week, and:
  
    - had actively looked for full time or part time work at any time in the
      four weeks up to the end of the reference week and were available for
      work in the reference week; or
    - were waiting to start a new job within four weeks from the end of the
      reference week and could have started in the reference week if the job
      had been available then.
  
  Actively looked for work includes:
  
    - written, telephoned or applied to an employer for work;
    - had an interview with an employer for work;
    - answered an advertisement for a job;
    - checked or registered with a Job Services Australia provider or any other
      employment agency;
    - taken steps to purchase or start your own business;
    - advertised or tendered for work; and
    - contacted friends or relatives in order to obtain work.
  
  3 - Not in the labour force
    Persons not in the labour force are those aged 15 years and over who were
    not in the categories employed or unemployed, as defined, during the
    reference week. They include people who undertook unpaid household duties
    or other voluntary work only, were retired, voluntarily inactive and those
    permanently unable to work.
  

:Source: `METeOR ID 621450 <http://meteor.aihw.gov.au/content/index.phtml/itemId/621450>`__

----------

.. _dfn-marital_status:

Episode - Marital Status
^^^^^^^^^^^^^^^^^^^^^^^^

A person's current relationship status in terms of a couple relationship or, for those not in a couple relationship, the existence of a current or previous registered marriage, as represented by a code.

:Field name: marital_status

:Data type: string

:Required: yes

:Domain:
  :1: Never married
  :2: Widowed
  :3: Divorced
  :4: Separated
  :5: Married (registered and de facto)
  :6: Not stated/inadequately described
:Notes:
  Refers to the current marital status of a person.
  
  2 - Widowed
    This code usually refers to registered marriages but when self-reported may
    also refer to de facto marriages.
  
  4 - Separated
    This code refers to registered marriages but when self-reported may also
    refer to de facto marriages.
  
  5 - Married (registered and de facto)
    Includes people who have been divorced or widowed but have since
    re-married, and should be generally accepted as applicable to all de facto
    couples, including of the same sex.
  
  6 - Not stated/inadequately described
    This code is not for use on primary collection forms. It is primarily for
    use in administrative collections when transferring data from data sets
    where the item has not been collected.
  

:Source: `METeOR ID 291045 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291045>`__

----------

.. _dfn-medication_antidepressants:

Episode - Medication - Antidepressants (N06A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antidepressants for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antidepressants

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N06A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the depressive disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06A
  

----------

.. _dfn-medication_antipsychotics:

Episode - Medication - Antipsychotics (N05A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antipsychotics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antipsychotics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N05A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of psychotic
  disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05A
  

----------

.. _dfn-medication_anxiolytics:

Episode - Medication - Anxiolytics (N05B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed anxiolytics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_anxiolytics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N05B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of disorders
  associated with anxiety and tension.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05B
  

----------

.. _dfn-medication_hypnotics:

Episode - Medication - Hypnotics and sedatives (N05C)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed hypnotics and sedatives for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_hypnotics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N05C class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to have mainly sedative or hypnotic
  actions. Hypnotic drugs are used to induce sleep and treat severe insomnia.
  Sedative drugs are prescribed to reduce excitability or anxiety.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05C
  

----------

.. _dfn-medication_psychostimulants:

Episode - Medication - Psychostimulants and nootropics (N06B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed psychostimulants and nootropics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_psychostimulants

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N06B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to attention-deficit hyperactivity
  disorder (ADHD) and to improve impaired cognitive abilities.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06B
  

----------

.. _dfn-ndis_participant:

Episode - NDIS Participant
^^^^^^^^^^^^^^^^^^^^^^^^^^

Is the client a participant in the National Disability Insurance Scheme?, as represented by a code.

:Field name: ndis_participant

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Not stated/inadequately described

----------

.. _dfn-principal_diagnosis:

Episode - Principal Diagnosis
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Principal Diagnosis is the diagnosis established after study to be chiefly responsible for occasioning the client's care during the current Episode of Care.

:Field name: principal_diagnosis

:Data type: string

:Required: yes

:Domain:
  :100: Anxiety disorders (ATAPS)
  :101: Panic disorder
  :102: Agoraphobia
  :103: Social phobia
  :104: Generalised anxiety disorder
  :105: Obsessive-compulsive disorder
  :106: Post-traumatic stress disorder
  :107: Acute stress disorder
  :108: Other anxiety disorder
  :200: Affective (Mood) disorders (ATAPS)
  :201: Major depressive disorder
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :300: Substance use disorders (ATAPS)
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Other drug harmful use
  :304: Other drug dependence
  :305: Other substance use disorder
  :400: Psychotic disorders (ATAPS)
  :401: Schizophrenia
  :402: Schizoaffective disorder
  :403: Brief psychotic disorder
  :404: Other psychotic disorder
  :501: Separation anxiety disorder
  :502: Attention deficit hyperactivity disorder (ADHD)
  :503: Conduct disorder
  :504: Oppositional defiant disorder
  :505: Pervasive developmental disorder
  :506: Other disorder of childhood and adolescence
  :601: Adjustment disorder
  :602: Eating disorder
  :603: Somatoform disorder
  :604: Personality disorder
  :605: Other mental disorder
  :901: Anxiety symptoms
  :902: Depressive symptoms
  :903: Mixed anxiety and depressive symptoms
  :904: Stress related
  :905: Other
  :999: Missing
:Notes:
  Diagnoses are grouped into 7 major categories:
  
  - 1xx - Anxiety disorders
  - 2xx - Affective (Mood) disorders
  - 3xx - Substance use disorders
  - 4xx - Psychotic disorder
  - 5xx - Disorders with onset usually occurring in childhood and adolescence not listed elsewhere
  - 6xx - Other mental disorder
  - 9xx - No formal mental disorder but subsyndromal problem
  
  The Principal Diagnosis should be determined by the treating or supervising
  clinical practitioner who is responsible for providing, or overseeing, services
  delivered to the client during their current episode of care. Each episode of
  care must have a Principal Diagnosis recorded and may have an Additional
  Diagnoses. In some instances the client’s Principal Diagnosis may not be clear
  at initial contact and require a period of contact before a reliable diagnosis
  can be made. If a client has more than one diagnosis, the Principal Diagnosis
  should reflect the main presenting problem. Any secondary diagnosis should be
  recorded under the Additional Diagnosis field.
  
  The coding options developed for the PMHC MDS have been selected to balance
  comprehensiveness and brevity. They comprise a mix of the most prevalent mental
  disorders in the Australian adult, child and adolescent population,
  supplemented by less prevalent conditions that may be experienced by clients of
  PHN-commissioned mental health services. The diagnosis options are based on an
  abbreviated set of clinical terms and groupings specified in the Diagnostic and
  Statistical Manual of Mental Disorders Fourth Edition (DSM-IV-TR). These code
  list summarises the approximate 300 unique mental health disorder codes in the
  full DSM-IV to a set to 9 major categories, and 37 individual codes. Diagnoses
  are grouped under higher level categories, based on the DSM-IV. Code numbers
  have been assigned specifically for the PMHC MDS to create a logical ordering
  but are capable of being mapped to both DSM-IV and ICD-10 codes.
  
  Options for recording Principal Diagnosis include the broad category ‘No formal
  mental disorder but subsyndromal problem’ (codes commencing with 9). These
  codes should be used for clients who present with problems that do not meet
  threshold criteria for a formal diagnosis - for example, people experiencing
  subsyndromal symptoms who may be at risk of progressing to a more severe
  symptom level.
  
  Reference: Diagnostic and Statistical Manual of Mental Disorders, Fourth
  Edition, Text Revision. Copyright 2000 American Psychiatric Association.
  
  The following responses have been added to allow mapping of ATAPS data to PMHC 
  format.
  
  - 100: Anxiety disorders (ATAPS)
  - 200: Affective (Mood) disorders (ATAPS)
  - 300: Substance use disorders (ATAPS)
  - 400: Psychotic disorders (ATAPS)
  
  *Note: These four codes should only be used for Episodes that are migrated 
  from ATAPS MDS sources that cannot be described by any other Diagnosis. 
  It is expected that the majority of Episodes delivered to clients 
  from 1st July, 2017 can be assigned to other diagnoses.*
  
  These responses will only be allowed on episodes where the original 
  ATAPS referral date was before 1 July 2017
  
  These responses will only be allowed on episodes with the !ATAPS flag.
  

----------

.. _dfn-principal_focus:

Episode - Principal Focus of Treatment Plan
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The range of activities that best describes the overall services intended to be delivered to the client throughout the course of the episode. For most clients, this will equate to the activities that account for most time spent by the service provider.

:Field name: principal_focus

:Data type: string

:Required: yes

:Domain:
  :1: Psychological therapy
  :2: Low intensity psychological intervention
  :3: Clinical care coordination
  :4: Complex care package
  :5: Child and youth-specific mental health services
  :6: Indigenous-specific mental health services
  :7: Other
  :8: Psychosocial Support
:Notes:
  Describes the main focus of the services to be delivered to the client for the
  current Episode of Care.
  
  7 - Other
    Only this response should be used for either AMHC Hub episodes
  

----------

.. _dfn-income_source:

Episode - Source of Cash Income
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The source from which a person derives the greatest proportion of his/her income, as represented by a code.

:Field name: income_source

:Data type: string

:Required: yes

:Domain:
  :0: N/A - Client aged less than 16 years
  :1: Disability Support Pension
  :2: Other pension or benefit (not superannuation)
  :3: Paid employment
  :4: Compensation payments
  :5: Other (e.g. superannuation, investments etc.)
  :6: Nil income
  :7: Not known
  :9: Not stated/inadequately described
:Notes:
  This data standard is not applicable to person's aged less than 16 years.
  
  This item refers to the source by which a person derives most (equal to or
  greater than 50%) of his/her income. If the person has multiple sources of
  income and none are equal to or greater than 50%, the one which contributes
  the largest percentage should be counted.
  
  This item refers to a person's own main source of income, not that of a
  partner or of other household members. If it is difficult to determine a
  'main source of income' over the reporting period (i.e. it may vary over
  time) please report the main source of income during the reference week.
  
  Code 7 'Not known' should only be recorded when it has not been possible for
  the service user or their carer/family/advocate to provide the information
  (i.e. they have been asked but do not know).
  

:Source: `METeOR ID 386449 <http://meteor.aihw.gov.au/content/index.phtml/itemId/386449>`__

----------

.. _dfn-suicide_referral_flag:

Episode - Suicide Referral Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Identifies those individuals where a recent history of suicide attempt, or suicide risk, was a factor noted in the referral that underpinned the person's needs for assistance at entry to the episode, as represented by a code.

:Field name: suicide_referral_flag

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

----------

.. _dfn-episode_tags:

Episode - Tags
^^^^^^^^^^^^^^

List of tags for the episode.

:Field name: episode_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-iar_dst_domain_1:

IAR-DST - Domain 1 - Symptom Severity and Distress (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An initial assessment should examine severity of symptoms, distress and previous history of mental illness. Severity of current symptoms and associated levels of distress are important factors in assigning a level of care and making a referral decision. Assessing changes in symptom severity and distress also forms an important part of outcome monitoring.

:Field name: iar_dst_domain_1

:Data type: string

:Required: yes

:Domain:
  :0: No problem in this domain
  :1: Mild or sub diagnostic
  :2: Moderate
  :3: Severe
  :4: Very severe
:Notes:
  Please refer to `IAR-DST Domain 1 - Symptom Severity and Distress (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-1.html>`_
  

----------

.. _dfn-iar_dst_domain_2:

IAR-DST - Domain 2 - Risk of Harm (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An initial assessment should include an evaluation of risk to determine a person’s potential for harm to self or others. Results from this assessment are of fundamental importance in deciding the appropriate level of care required.

:Field name: iar_dst_domain_2

:Data type: string

:Required: yes

:Domain:
  :0: No identified risk in this domain
  :1: Low risk of harm
  :2: Moderate risk of harm
  :3: High risk of harm
  :4: Very high risk of harm
:Notes:
  Please refer to `IAR-DST Domain 2 - Risk of Harm (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-2.html>`_
  

----------

.. _dfn-iar_dst_domain_3:

IAR-DST - Domain 3 - Functioning (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An initial assessment should consider functional impairment caused by or exacerbated by the mental health condition. While other types of disabilities may play a role in determining what types of support services may be required, they should generally not be considered in determining mental health intervention intensity within a stepped care continuum.

:Field name: iar_dst_domain_3

:Data type: string

:Required: yes

:Domain:
  :0: No problems in this domain
  :1: Mild impact
  :2: Moderate impact
  :3: Severe impact
  :4: Very severe to extreme impact
:Notes:
  Please refer to `IAR-DST Domain 3 - Functioning (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-3.html>`_
  

----------

.. _dfn-iar_dst_domain_4:

IAR-DST - Domain 4 - Impact of Co-existing Conditions (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Increasingly, individuals are experiencing and managing multi-morbidity (coexistence of multiple conditions including chronic disease). An initial assessment should specifically examine the presence of other concurrent health conditions that contribute to (or have the potential to contribute to) increased severity of mental health problems and/or compromises the person’s ability to participate in the recommended treatment.

:Field name: iar_dst_domain_4

:Data type: string

:Required: yes

:Domain:
  :0: No problem in this domain
  :1: Minor impact
  :2: Moderate impact
  :3: Severe impact
  :4: Very severe impact
:Notes:
  Please refer to `IAR-DST Domain 4 - Impact of Co-existing Conditions (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-4.html>`_
  

----------

.. _dfn-iar_dst_domain_5:

IAR-DST - Domain 5 - Treatment and Recovery History (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should explore the individual’s relevant treatment history and their response to previous treatment. Response to previous treatment is a reasonable predictor of future treatment need and is particularly important when determining appropriateness of lower intensity services.

:Field name: iar_dst_domain_5

:Data type: string

:Required: yes

:Domain:
  :0: No prior treatment history
  :1: Full recovery with previous treatment
  :2: Moderate recovery with previous treatment
  :3: Minor recovery with previous treatment
  :4: Negligible recovery with previous treatment
:Notes:
  Please refer to `IAR-DST Domain 5 - Treatment and Recovery History (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-5.html>`_
  

----------

.. _dfn-iar_dst_domain_6:

IAR-DST - Domain 6 - Social and Environmental Stressors (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should consider how the person’s environment might contribute to the onset or maintenance of a mental health condition. Significant situational or social complexities can lead to increased condition severity and/or compromise ability to participate in the recommended treatment. Unresolved situational or social complexities can limit the likely benefit of treatment. Furthermore, understanding the complexities experienced by the individual (with carer/support person perspectives if available), may alter the type of service offered, or indicate that additional service referrals may be required (e.g., a referral to an emergency housing provider).

:Field name: iar_dst_domain_6

:Data type: string

:Required: yes

:Domain:
  :0: No problem in this domain
  :1: Mildly stressful environment
  :2: Moderately stressful environment
  :3: Highly stressful environment
  :4: Extremely stressful environment
:Notes:
  Please refer to `IAR-DST Domain 6 - Social and Environmental Stressors (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-6.html>`_
  

----------

.. _dfn-iar_dst_domain_7:

IAR-DST - Domain 7 - Family and Other Supports (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should consider whether informal supports are present and their potential to contribute to recovery. A lack of supports might contribute to the onset or maintenance of the mental health condition and/or compromise ability to participate in the recommended treatment.

:Field name: iar_dst_domain_7

:Data type: string

:Required: yes

:Domain:
  :0: Highly supported
  :1: Well supported
  :2: Limited supports
  :3: Minimal supports
  :4: No supports
:Notes:
  Please refer to `IAR-DST Domain 7 - Family and Other Supports (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-7.html>`_
  

----------

.. _dfn-iar_dst_domain_8:

IAR-DST - Domain 8 - Engagement and Motivation (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should explore the person’s understanding of the mental health condition and their willingness to engage in or accept treatment.

:Field name: iar_dst_domain_8

:Data type: string

:Required: yes

:Domain:
  :0: Optimal
  :1: Positive
  :2: Limited
  :3: Minimal
  :4: Disengaged
:Notes:
  Please refer to `IAR-DST Domain 8 - Engagement and Motivation (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-8.html>`_
  

----------

.. _dfn-iar_dst_practitioner_level_of_care:

IAR-DST - Practitioner Level of Care
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The individualised level of care assessed by the practitioner for the referral

:Field name: iar_dst_practitioner_level_of_care

:Data type: string

:Required: yes

:Domain:
  :1: Level 1 - Self Management
  :2: Level 2 - Low Intensity Services
  :3: Level 3 - Moderate Intensity Services
  :4: Level 4 - High Intensity Services
  :5: Level 5 - Acute and Specialist Community Mental Health Services
  :9: Not stated
:Notes:
  Please refer to `IAR-DST Levels of Care <https://docs.iar-dst.online/en/latest/level-of-care/index.html>`_
  
  This field was added on 25/2/2021. IAR-DST data entered into the PMHC-MDS
  before 25/2/2021 will have the Practitioner Level of Care set to 9: Missing.
  All data entered after 25/2/2021 must use responses 1-5.
  

----------

.. _dfn-iar_dst_recommended_level_of_care:

IAR-DST - Recommended Level of Care
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The information gathered through the initial assessment is used to assign a recommended level of care and inform a referral decision. The levels of care are not intended to replace individualised assessment and care - rather to provide information to guide decision making.

:Field name: iar_dst_recommended_level_of_care

:Data type: string

:Required: yes

:Domain:
  :1: Level 1 - Self Management
  :1+: Level 1 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :2: Level 2 - Low Intensity Services
  :2+: Level 2 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :3: Level 3 - Moderate Intensity Services
  :3+: Level 3 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :4: Level 4 - High Intensity Services
  :4+: Level 4 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :5: Level 5 - Acute and Specialist Community Mental Health Services
:Notes:
  Please refer to `IAR-DST Levels of Care <https://docs.iar-dst.online/en/latest/level-of-care/index.html>`_
  

----------

.. _dfn-iar_dst_tags:

IAR-DST - Tags
^^^^^^^^^^^^^^

List of tags for the measure.

:Field name: iar_dst_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-intake_collection_occasion_tags:

Intake Collection Occasion - Tags
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

List of tags for the collection occasion.

:Field name: intake_collection_occasion_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-intake_collection_occasion_key:

Intake Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each intake collection occasion of service activities. The Intake Collection Occasion Key is unique and stable for each intake collection occasion at the level of the organisation.

:Field name: intake_collection_occasion_key

:Data type: string [2,50]

:Required: yes
:Notes:
  Intake Collection Occasion keys are case sensitive and must be valid unicode characters.
  

----------

.. _dfn-contact_date:

Intake - Contact Date
^^^^^^^^^^^^^^^^^^^^^

The date on which the client first contacted the intake service

:Field name: contact_date

:Data type: date [dMMyyyy]

:Required: no
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  - The contact date must not be before 1st January 2020.
  
  - The contact date must not be in the future.
  

----------

.. _dfn-intake_funding_source:

Intake - Funding Source
^^^^^^^^^^^^^^^^^^^^^^^

The source of funding for the intake

:Field name: intake_funding_source

:Data type: string

:Required: yes

:Domain:
  :1: HeadtoHelp
  :2: AMHC

----------

.. _dfn-intake_key:

Intake Key
^^^^^^^^^^

This is a number or code assigned to each intake. The Intake Key is unique and stable for each intake at the level of the organisation.

:Field name: intake_key

:Data type: string [2,50]

:Required: yes
:Notes:
  Intake Keys must be generated by the organisation to be unique at the provider
  organisation level and must persist across time. Creation of intake keys in
  this way allows clients to be merged (where duplicate Client Keys have been
  identified) without having to re-allocate intake identifiers since they can
  never clash.
  
  A recommended approach for the creation of Intake Keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-intake_organisation_path:

Intake Organisation Path
^^^^^^^^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Intake Organisation that referred the client to the hub service. In conjuctionion with the intake key, this allows linkage from the hub episode back to the intake.

:Field name: intake_organisation_path

:Data type: string

:Required: no
:Notes:
  **This field should only be completed for an episode at the hub provider organisation.
  It should be left blank for an episode at an intake organisation.**
  
  This field is a combination of the Organisation Key of the Intake
  Organisation's Primary Health Network(PHN) and the Intake Organisation's
  Organisation Key separated by a colon.
  
  This information must be included with the other referral information
  provided to the Hub by the Intake organisation.
  

----------

.. _dfn-outcome:

Intake - Outcome
^^^^^^^^^^^^^^^^

An indication of the completion status of an *Intake*.

:Field name: outcome

:Data type: string

:Required: no

:Domain:
  :0: Intake open
  :1: Intake closed - client did not require service
  :2: Intake closed - client referred to a clinic
:Notes:
  1 - Intake closed - client did not require service
    The client has been discharged not requiring service.
  
  2 - Intake closed - client referred to a clinic
    Client was referred to either an AMHC hub clinic, an AMHC non hub clinic or
    non PMHC MDS funded clinic.
  
  *Intake Outcome* interacts *Outcome Date*.
  
  *Outcome Date*
    Where a closed outcome was recorded the Outcome Date should be
    recorded as the date of the intake was closed.
  

----------

.. _dfn-outcome_date:

Intake - Outcome Date
^^^^^^^^^^^^^^^^^^^^^

The date the intake had an outcome

:Field name: outcome_date

:Data type: date [dMMyyyy]

:Required: no
:Notes:
  - The outcome date must not be before 1st January 2020.
  
  - The outcome end date must not be in the future.
  
  *Outcome Date* interacts with *Outcome*.
  
  *Outcome*
    This field should be recorded as one of the intake closed options when an
    *Outcome Date* is recorded.
  

----------

.. _dfn-intake_tags:

Intake - Tags
^^^^^^^^^^^^^

List of tags for the intake.

:Field name: intake_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-key:

Key
^^^

A metadata key name.

:Field name: key

:Data type: string

:Required: yes

----------

.. _dfn-k5_item1:

K5 - Question 1
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel nervous?

:Field name: k5_item1

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item2:

K5 - Question 2
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel without hope?

:Field name: k5_item2

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item3:

K5 - Question 3
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel restless or jumpy?

:Field name: k5_item3

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item4:

K5 - Question 4
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel everything was an effort?

:Field name: k5_item4

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item5:

K5 - Question 5
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel so sad that nothing could cheer you up?

:Field name: k5_item5

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_score:

K5 - Score
^^^^^^^^^^

The overall K5 score.

:Field name: k5_score

:Data type: integer

:Required: yes

:Domain:
  5 - 25, 99 = Not stated / Missing
:Notes:
  The K5 Total score is based on the sum of K5 item 1 through 5 (range: 5-25).
  
  The Total score is computed as the sum of the item scores. If any item has not
  been completed (that is, has not been coded 1, 2, 3, 4, 5), it is excluded from
  the calculation and not counted as a valid item. If any item is missing, the
  Total Score is set as missing.
  
  For the Total score, the missing value used should be 99.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’
  

----------

.. _dfn-k5_tags:

K5 - Tags
^^^^^^^^^

List of tags for the measure.

:Field name: k5_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-k10p_item1:

K10+ - Question 1
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel tired out for no good reason?

:Field name: k10p_item1

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item2:

K10+ - Question 2
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel nervous?

:Field name: k10p_item2

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item3:

K10+ - Question 3
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel so nervous that nothing could calm you down?

:Field name: k10p_item3

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item4:

K10+ - Question 4
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel hopeless?

:Field name: k10p_item4

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item5:

K10+ - Question 5
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel restless or fidgety?

:Field name: k10p_item5

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item6:

K10+ - Question 6
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so restless you could not sit still?

:Field name: k10p_item6

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item7:

K10+ - Question 7
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel depressed?

:Field name: k10p_item7

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item8:

K10+ - Question 8
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel that everything was an effort?

:Field name: k10p_item8

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item9:

K10+ - Question 9
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so sad that nothing could cheer you up?

:Field name: k10p_item9

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item10:

K10+ - Question 10
^^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel worthless?

:Field name: k10p_item10

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item11:

K10+ - Question 11
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many days were you totally unable to work, study or manage your day to day activities because of these feelings?

:Field name: k10p_item11

:Data type: integer

:Required: yes

:Domain:
  0 - 28, 99 = Not stated / Missing
:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time', 
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item12:

K10+ - Question 12
^^^^^^^^^^^^^^^^^^

Aside from those days, in the past four weeks, how many days were you able to work or study or manage your day to day activities, but had to cut down on what you did because of these feelings?

:Field name: k10p_item12

:Data type: integer

:Required: yes

:Domain:
  0 - 28, 99 = Not stated / Missing
:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item13:

K10+ - Question 13
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many times have you seen a doctor or any other health professional about these feelings?

:Field name: k10p_item13

:Data type: integer

:Required: yes

:Domain:
  0 - 89, 99 = Not stated / Missing
:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item14:

K10+ - Question 14
^^^^^^^^^^^^^^^^^^

In the past four weeks, how often have physical health problems been the main cause of these feelings?

:Field name: k10p_item14

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing
:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_score:

K10+ - Score
^^^^^^^^^^^^

The overall K10 score.

:Field name: k10p_score

:Data type: integer

:Required: yes

:Domain:
  10 - 50, 99 = Not stated / Missing
:Notes:
  The K10 Total score is based on the sum of K10 item 01 through 10 (range: 10-50).
  Items 11 through 14 are excluded from the total because they are separate
  measures of disability associated with the problems referred to in the preceding
  ten items.
  
  The Total score is computed as the sum of the scores for items 1 to 10. If any
  item has not been completed (that is, has not been coded 1, 2, 3, 4, 5), it is
  excluded from the total with the proviso that a competed K10 with more than one
  missing item is regarded as invalid.
  
  If more than one item of items 1 to 10 are missing, the Total Score is set as
  missing. Where this is the case, the missing value used should be 99.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-k10p_tags:

K10+ - Tags
^^^^^^^^^^^

List of tags for the measure.

:Field name: k10p_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-measure_key:

Measure Key
^^^^^^^^^^^

This is a number or code assigned to each instance of a measure. The Measure Key is unique and stable for each instance of a measure at the level of the organisation.

:Field name: measure_key

:Data type: string [2,50]

:Required: yes
:Notes:
  Measure keys are case sensitive and must be valid unicode characters.
  

----------

.. _dfn-organisation_path:

Organisation Path
^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation providing a service to the client.

:Field name: organisation_path

:Data type: string

:Required: yes
:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  Here is an example organisation structure showing the Organisation Path for each organisation:
  
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | Organisation Key | Organisation Name             | Organisation Type                           | Commissioning Organisation | Organisation Path |
  +==================+===============================+=============================================+============================+===================+
  | PHN999           | Test PHN                      | Primary Health Network                      | None                       | PHN999            |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | PO101            | Test Provider Organisation    | Private Allied Health Professional Practice | PHN999                     | PHN999:PO101      |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  

----------

.. _dfn-practitioner_key:

Practitioner Key
^^^^^^^^^^^^^^^^

A unique identifier for a practitioner within the provider organisation.

:Field name: practitioner_key

:Data type: string [2,50]

:Required: yes

----------

.. _dfn-referral_date:

Referral Date
^^^^^^^^^^^^^

The date the referrer made the referral to the intake service.

:Field name: referral_date

:Data type: date [dMMyyyy]

:Required: no
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  - The referral date must not be before 1st January 2014.
  
  - The referral date must not be in the future.
  

----------

.. _dfn-referral_out_organisation_type:

Referral Out Organisation Type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation to which the client is being referred.

:Field name: referral_out_organisation_type

:Data type: string

:Required: yes

:Domain:
  :0: None/Not applicable
  :1: General Practice
  :2: Medical Specialist Consulting Rooms
  :3: Private practice
  :4: Public mental health service
  :5: Public Hospital
  :6: Private Hospital
  :7: Emergency Department
  :8: Community Health Centre
  :9: Drug and Alcohol Service
  :10: Community Support Organisation NFP
  :11: Indigenous Health Organisation
  :12: Child and Maternal Health
  :13: Nursing Service
  :14: Telephone helpline
  :15: Digital health service
  :16: Family Support Service
  :17: School
  :18: Tertiary Education institution
  :19: Housing service
  :20: Centrelink
  :21: Other
  :22: HeadtoHelp Hub
  :23: Non HeadtoHelp Hub or AMHC Hub PHN funded service
  :24: AMHC Hub
  :99: Not stated
  
  Multiple space separated values allowed
  
:Notes:
  Medical Specialist Consulting Rooms includes private medical practitioner rooms
  in public or private hospital or other settings.
  
  Public mental health service refers to a state- or territory-funded specialised
  mental health services (i.e., specialised mental health care delivered in
  public acute and psychiatric hospital settings, community mental health care
  services, and s specialised residential mental health care services).
  
  Not applicable should only be selected in instances of Self referral.
  

----------

.. _dfn-referrer_organisation_type:

Referrer Organisation Type
^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation in which the referring professional is based.

:Field name: referrer_organisation_type

:Data type: string

:Required: yes

:Domain:
  :1: General Practice
  :2: Medical Specialist Consulting Rooms
  :3: Private practice
  :4: Public mental health service
  :5: Public Hospital
  :6: Private Hospital
  :7: Emergency Department
  :8: Community Health Centre
  :9: Drug and Alcohol Service
  :10: Community Support Organisation NFP
  :11: Indigenous Health Organisation
  :12: Child and Maternal Health
  :13: Nursing Service
  :14: Telephone helpline
  :15: Digital health service
  :16: Family Support Service
  :17: School
  :18: Tertiary Education institution
  :19: Housing service
  :20: Centrelink
  :21: Other
  :98: N/A - Self referral
  :99: Not stated
:Notes:
  Medical Specialist Consulting Rooms includes private medical practitioner rooms
  in public or private hospital or other settings.
  
  Public mental health service refers to a state- or territory-funded specialised
  mental health services (i.e., specialised mental health care delivered in
  public acute and psychiatric hospital settings, community mental health care
  services, and s specialised residential mental health care services).
  
  Not applicable should only be selected in instances of Self referral.
  

----------

.. _dfn-referrer_profession:

Referrer Profession
^^^^^^^^^^^^^^^^^^^

Profession of the provider who referred the client.

:Field name: referrer_profession

:Data type: string

:Required: yes

:Domain:
  :1: General Practitioner
  :2: Psychiatrist
  :3: Obstetrician
  :4: Paediatrician
  :5: Other Medical Specialist
  :6: Midwife
  :7: Maternal Health Nurse
  :8: Psychologist
  :9: Mental Health Nurse
  :10: Social Worker
  :11: Occupational therapist
  :12: Aboriginal Health Worker
  :13: Educational professional
  :14: Early childhood service worker
  :15: Other
  :98: N/A - Self referral
  :99: Not stated
:Notes:
  New arrangements for some services delivered in primary mental health care
  allows clients to refer themselves for treatment. Therefore, 'Self'
  is a response option included within 'Referrer profession'.
  

----------

.. _dfn-sdq_version:

SDQ Collection Occasion - Version
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The version of the SDQ collected.

:Field name: sdq_version

:Data type: string

:Required: yes

:Domain:
  :PC101: Parent Report Measure 4-10 yrs, Baseline version, Australian Version 1
  :PC201: Parent Report Measure 4-10 yrs, Follow Up version, Australian Version 1
  :PY101: Parent Report Measure 11-17 yrs, Baseline version, Australian Version 1
  :PY201: Parent Report Measure 11-17 yrs, Follow Up version, Australian Version 1
  :YR101: Self report Version, 11-17 years, Baseline version, Australian Version 1
  :YR201: Self report Version, 11-17 years, Follow Up version, Australian Version 1
:Notes:
  Domain values align with those collected in the NOCC dataset as defined at
  https://webval.validator.com.au/spec/NOCC/current/SDQ/SDQVer
  

----------

.. _dfn-sdq_conduct_problem:

SDQ - Conduct Problem Scale
^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_conduct_problem

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing
:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Conduct Problem Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_emotional_symptoms:

SDQ - Emotional Symptoms Scale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_emotional_symptoms

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing
:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Emotional Symptoms Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_hyperactivity:

SDQ - Hyperactivity Scale
^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_hyperactivity

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing
:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Hyperactivity Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_impact:

SDQ - Impact Score
^^^^^^^^^^^^^^^^^^


:Field name: sdq_impact

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing
:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Impact Score.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_peer_problem:

SDQ - Peer Problem Scale
^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_peer_problem

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing
:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Peer Problem Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_prosocial:

SDQ - Prosocial Scale
^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_prosocial

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing
:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Prosocial Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item1:

SDQ - Question 1
^^^^^^^^^^^^^^^^

Parent Report: Considerate of other people's feelings.

Youth Self Report: I try to be nice to other people. I care about their feelings.

:Field name: sdq_item1

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item2:

SDQ - Question 2
^^^^^^^^^^^^^^^^

Parent Report: Restless, overactive, cannot stay still for long.

Youth Self Report: I am restless, I cannot stay still for long.

:Field name: sdq_item2

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item3:

SDQ - Question 3
^^^^^^^^^^^^^^^^

Parent Report: Often complains of headaches, stomach-aches or sickness.

Youth Self Report: I get a lot of headaches, stomach-aches or sickness.

:Field name: sdq_item3

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item4:

SDQ - Question 4
^^^^^^^^^^^^^^^^

Parent Report: Shares readily with other children {for example toys, treats, pencils} / young people {for example CDs, games, food}.

Youth Self Report: I usually share with others, for examples CDs, games, food.

:Field name: sdq_item4

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item5:

SDQ - Question 5
^^^^^^^^^^^^^^^^

Parent Report: Often loses temper.

Youth Self Report: I get very angry and often lose my temper.

:Field name: sdq_item5

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item6:

SDQ - Question 6
^^^^^^^^^^^^^^^^

Parent Report: {Rather solitary, prefers to play alone} / {would rather be alone than with other young people}.

Youth Self Report: I would rather be alone than with people of my age.

:Field name: sdq_item6

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item7:

SDQ - Question 7
^^^^^^^^^^^^^^^^

Parent Report: {Generally well behaved} / {Usually does what adults requests}.

Youth Self Report: I usually do as I am told.

:Field name: sdq_item7

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item8:

SDQ - Question 8
^^^^^^^^^^^^^^^^

Parent Report: Many worries or often seems worried.

Youth Self Report: I worry a lot.

:Field name: sdq_item8

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item9:

SDQ - Question 9
^^^^^^^^^^^^^^^^

Parent Report: Helpful if someone is hurt, upset or feeling ill.

Youth Self Report: I am helpful if someone is hurt, upset or feeling ill.

:Field name: sdq_item9

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item10:

SDQ - Question 10
^^^^^^^^^^^^^^^^^

Parent Report: Constantly fidgeting or squirming.

Youth Self Report: I am constantly fidgeting or squirming.

:Field name: sdq_item10

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item11:

SDQ - Question 11
^^^^^^^^^^^^^^^^^

Parent Report: Has at least one good friend.

Youth Self Report: I have one good friend or more.

:Field name: sdq_item11

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item12:

SDQ - Question 12
^^^^^^^^^^^^^^^^^

Parent Report: Often fights with other {children} or bullies them / {young people}.

Youth Self Report: I fight a lot. I can make other people do what I want.

:Field name: sdq_item12

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item13:

SDQ - Question 13
^^^^^^^^^^^^^^^^^

Parent Report: Often unhappy, depressed or tearful.

Youth Self Report: I am often unhappy, depressed or tearful.

:Field name: sdq_item13

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item14:

SDQ - Question 14
^^^^^^^^^^^^^^^^^

Parent Report: Generally liked by other {children} / {young people}

Youth Self Report: Other people my age generally like me.

:Field name: sdq_item14

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item15:

SDQ - Question 15
^^^^^^^^^^^^^^^^^

Parent Report: Easily distracted, concentration wanders.

Youth Self Report: I am easily distracted, I find it difficult to concentrate.

:Field name: sdq_item15

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item16:

SDQ - Question 16
^^^^^^^^^^^^^^^^^

Parent Report: Nervous or {clingy} in new situations, easily loses confidence {omit clingy in PY}.

Youth Self Report: I am nervous in new situations. I easily lose confidence.

:Field name: sdq_item16

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item17:

SDQ - Question 17
^^^^^^^^^^^^^^^^^

Parent Report: Kind to younger children.

Youth Self Report: I am kind to younger people.

:Field name: sdq_item17

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item18:

SDQ - Question 18
^^^^^^^^^^^^^^^^^

Parent Report: Often lies or cheats.

Youth Self Report: I am often accused of lying or cheating.

:Field name: sdq_item18

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item19:

SDQ - Question 19
^^^^^^^^^^^^^^^^^

Parent Report: Picked on or bullied by {children} / {youth}.

Youth Self Report: Other children or young people pick on me or bully me.

:Field name: sdq_item19

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item20:

SDQ - Question 20
^^^^^^^^^^^^^^^^^

Parent Report: Often volunteers to help others (parents, teachers, {other} children) / Omit 'other' in PY.

Youth Self Report: I often volunteer to help others (parents, teachers, children).

:Field name: sdq_item20

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item21:

SDQ - Question 21
^^^^^^^^^^^^^^^^^

Parent Report: Thinks things out before acting.

Youth Self Report: I think before I do things.

:Field name: sdq_item21

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item22:

SDQ - Question 22
^^^^^^^^^^^^^^^^^

Parent Report: Steals from home, school or elsewhere.

Youth Self Report: I take things that are not mine from home, school or elsewhere.

:Field name: sdq_item22

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item23:

SDQ - Question 23
^^^^^^^^^^^^^^^^^

Parent Report: Gets along better with adults than with other {children} / {youth}.

Youth Self Report: I get along better with adults than with people my own age.

:Field name: sdq_item23

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item24:

SDQ - Question 24
^^^^^^^^^^^^^^^^^

Parent Report: Many fears, easily scared.

Youth Self Report: I have many fears, I am easily scared.

:Field name: sdq_item24

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item25:

SDQ - Question 25
^^^^^^^^^^^^^^^^^

Parent Report: Good attention span sees chores or homework through to the end.

Youth Self Report: I finish the work I'm doing. My attention is good.

:Field name: sdq_item25

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item26:

SDQ - Question 26
^^^^^^^^^^^^^^^^^

Parent Report: Overall, do you think that your child has difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

Youth Self Report: Overall, do you think that you have difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

:Field name: sdq_item26

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: Yes - minor difficulties
  :2: Yes - definite difficulties
  :3: Yes - severe difficulties
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item27:

SDQ - Question 27
^^^^^^^^^^^^^^^^^

Parent Report: How long have these difficulties been present?

Youth Self Report: How long have these difficulties been present?

:Field name: sdq_item27

:Data type: string

:Required: yes

:Domain:
  :0: Less than a month
  :1: 1-5 months
  :2: 6-12 months
  :3: Over a year
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - PC101
  - PY101
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item28:

SDQ - Question 28
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties upset or distress your child?

Youth Self Report: Do the difficulties upset or distress you?

:Field name: sdq_item28

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item29:

SDQ - Question 29
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? HOME LIFE.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? HOME LIFE.

:Field name: sdq_item29

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item30:

SDQ - Question 30
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? FRIENDSHIPS.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? FRIENDSHIPS.

:Field name: sdq_item30

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item31:

SDQ - Question 31
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? CLASSROOM LEARNING.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? CLASSROOM LEARNING

:Field name: sdq_item31

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item32:

SDQ - Question 32
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? LEISURE ACTIVITIES.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? LEISURE ACTIVITIES.

:Field name: sdq_item32

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item33:

SDQ - Question 33
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties put a burden on you or the family as a whole?

Youth Self Report: Do the difficulties make it harder for those around you (family, friends, teachers, etc)?

:Field name: sdq_item33

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item34:

SDQ - Question 34
^^^^^^^^^^^^^^^^^

Parent Report: Since coming to the services, are your child's problems:

Youth Self Report: 'Since coming to the service, are your problems:

:Field name: sdq_item34

:Data type: string

:Required: yes

:Domain:
  :0: Much worse
  :1: A bit worse
  :2: About the same
  :3: A bit better
  :4: Much better
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - PC201
  - PY201
  - YR201
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item35:

SDQ - Question 35
^^^^^^^^^^^^^^^^^

Has coming to the service been helpful in other ways eg. providing information or making the problems bearable?

:Field name: sdq_item35

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - PC201
  - PY201
  - YR201
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item36:

SDQ - Question 36
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of fidgetiness, restlessness or overactivity?

:Field name: sdq_item36

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item37:

SDQ - Question 37
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of poor concentration or being easily distracted?

:Field name: sdq_item37

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item38:

SDQ - Question 38
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of acting without thinking, frequently butting in, or not waiting for his or her turn?

:Field name: sdq_item38

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item39:

SDQ - Question 39
^^^^^^^^^^^^^^^^^

Does your family complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item39

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item40:

SDQ - Question 40
^^^^^^^^^^^^^^^^^

Do your teachers complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item40

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item41:

SDQ - Question 41
^^^^^^^^^^^^^^^^^

Does your family complain about you being awkward or troublesome?

:Field name: sdq_item41

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item42:

SDQ - Question 42
^^^^^^^^^^^^^^^^^

Do your teachers complain about you being awkward or troublesome?

:Field name: sdq_item42

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_tags:

SDQ - Tags
^^^^^^^^^^

List of tags for the measure.

:Field name: sdq_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-sdq_total:

SDQ - Total Difficulties Score
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_total

:Data type: integer

:Required: yes

:Domain:
  0 - 40, 99 = Not stated / Missing
:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Total Difficulties Score.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-service_contact_participation_indicator:

Service Contact - Client Participation Indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indicator of whether the client participated, or intended to participate, in the service contact, as represented by a code.

:Field name: service_contact_participation_indicator

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
:Notes:
  Service contacts are not restricted to in-person communication but can include
  telephone, video link or other forms of direct communication.
  
  1 - Yes
    This code is to be used for service contacts between a mental health service
    provider and the patient/client in whose clinical record the service contact
    would normally warrant a dated entry, where the patient/client is
    participating.
  
  2 - No
    This code is to be used for service contacts between a mental health service
    provider and a third party(ies) where the patient/client, in whose clinical
    record the service contact would normally warrant a dated entry, is not
    participating.
  
  *Note:* Where a client intended to participate in a service contact but failed
  to attend, :ref:`dfn-service_contact_participation_indicator` should be recorded
  as '1: Yes' and :ref:`dfn-service_contact_no_show` should be recorded as '1: Yes'.
  

:Source: `METeOR ID 494341 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494341>`__

----------

.. _dfn-service_contact_copayment:

Service Contact - Copayment
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The co-payment is the amount paid by the client per session.

:Field name: service_contact_copayment

:Data type: number

:Required: yes

:Domain:
  0 - 999999.99
:Notes:
  Up to 6 digits before the decimal point; up to 2 digits after the decimal
  point.
  
  The co-payment is the amount paid by the client per service contact, not the
  fee paid by the project to the practitioner or the fee paid by the project to the
  practitioner plus the client contribution. In many cases, there will not be a
  co-payment charged and therefore zero should be entered. Where a co-payment
  is charged it should be minimal and based on an individual's capacity to pay.
  

----------

.. _dfn-service_contact_date:

Service Contact - Date
^^^^^^^^^^^^^^^^^^^^^^

The date of each mental health service contact between a health service provider and patient/client.

:Field name: service_contact_date

:Data type: date [dMMyyyy]

:Required: yes
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  - The service contact date must not be before 1st January 2014.
  
  - The service contact date must not be in the future.
  

:Source: `METeOR ID 494356 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494356>`__

----------

.. _dfn-service_contact_duration:

Service Contact - Duration
^^^^^^^^^^^^^^^^^^^^^^^^^^

The time from the start to finish of a service contact.

:Field name: service_contact_duration

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: 1-15 mins
  :2: 16-30 mins
  :3: 31-45 mins
  :4: 46-60 mins
  :5: 61-75 mins
  :6: 76-90 mins
  :7: 91-105 mins
  :8: 106-120 mins
  :9: over 120 mins
:Notes:
  For group sessions the time for client spent in the session is recorded for
  each client, regardless of the number of clients or third parties participating
  or the number of service providers providing the service. Writing up details of
  service contacts is not to be reported as part of the duration, except if
  during or contiguous with the period of client or third party participation.
  Travel to or from the location at which the service is provided, for example to
  or from outreach facilities or private homes, is not to be reported as part of
  the duration of the service contact.
  
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  

----------

.. _dfn-service_contact_final:

Service Contact - Final
^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether the Service Contact is the final for the current Episode of Care

:Field name: service_contact_final

:Data type: string

:Required: yes

:Domain:
  :1: No further services are planned for the client in the current episode
  :2: Further services are planned for the client in the current episode
  :3: Not known at this stage
:Notes:
  Service providers should report this item on the basis of future planned or
  scheduled contacts with the client. Where this item is recorded as 1 (No
  further services planned), the episode should be recorded as completed by:
  
  - the date of the final Service Contact should be recorded as the Episode End
    Date
  - the Episode Completion Status field should be recorded as ‘Treatment
    concluded.
  
  Note that no further Service Contacts can be recorded against an
  episode once it is marked as completed. Where an episode has been marked as
  completed prematurely, the Episode End Date can be manually corrected to allow
  additional activity to be recorded.
  

----------

.. _dfn-service_contact_interpreter:

Service Contact - Interpreter Used
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether an interpreter service was used during the Service Contact

:Field name: service_contact_interpreter

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Not stated
:Notes:
  Interpreter services includes verbal language, non-verbal language and
  languages other than English.
  
  1 - Yes
    Use this code where interpreter services were used during the Service
    Contact. Use of interpreter services for any form of sign language or other
    forms of non-verbal communication should be coded as Yes.
  
  2 - No
    Use this code where interpreter services were not used during the Service
    Contact.
  
  9 - Not stated
    Indicates that the item was not collected. This item should not appear as an
    option for clinicians, it is for administrative use only.
  

----------

.. _dfn-service_contact_modality:

Service Contact - Modality
^^^^^^^^^^^^^^^^^^^^^^^^^^

How the service contact was delivered, as represented by a code.

:Field name: service_contact_modality

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: Face to Face
  :2: Telephone
  :3: Video
  :4: Internet-based
:Notes:
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  
  1 - Face to Face
    - If 'Face to Face' is selected, a value other than 'Not applicable' must
      be selected for Service Contact Venue
    - If 'Face to Face' is selected a valid Australian
      postcode must be entered for Service Contact Postcode. The unknown postcode is not valid.
  
  4 - Internet-based
      Includes email communication, that would normally warrant a dated entry in 
      the clinical record of the client, involving a third party, such as a carer
      or family member, and/or other professional or mental health worker, or
      other service provider.
  
  Note: If Service Contact Modality is not 'Face to Face' the postcode must be entered as unknown 9999.
  

----------

.. _dfn-service_contact_no_show:

Service Contact - No Show
^^^^^^^^^^^^^^^^^^^^^^^^^

Where an appointment was made for an intended participant(s), but the intended participant(s) failed to attend the appointment, as represented by a code.

:Field name: service_contact_no_show

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
:Notes:
  1 - Yes
    The intended participant(s) failed to attend the appointment.
  2 - No
    The intended participant(s) attended the appointment.
  

----------

.. _dfn-service_contact_participants:

Service Contact - Participants
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of who participated in the Service Contact.

:Field name: service_contact_participants

:Data type: string

:Required: yes

:Domain:
  :1: Individual client
  :2: Client group
  :3: Family / Client Support Network
  :4: Other health professional or service provider
  :5: Other
  :9: Not stated
:Notes:
  1 - Individual
    Code applies for Service Contacts delivered individually to a single client
    without third party participants. Please refer to the Note below.
  
  2 - Client group
    Code applies for Service Contacts delivered on a group basis to two or more
    clients.
  
  3 - Family / Client Support Network
    Code applies to Service Contacts delivered to the family/social support
    persons of the client, with or without the participation of the client.
  
  4 - Other health professional or service provider
    Code applies for Service Contacts that involve another health professional or
    service provider (in addition to the Practitioner), with or without the
    participation of the client.
  
  5 - Other
    Code applies to Service Contacts delivered to other third parties
    (e.g., teachers, employer), with or without the participation of the client.
  
  *Note:* This item interacts with :ref:`dfn-service_contact_participation_indicator`.
  Where :ref:`dfn-service_contact_participants` has a value of
  '1: Individual', :ref:`dfn-service_contact_participation_indicator` must
  have a value of '1: Yes'. :ref:`dfn-service_contact_no_show` is used to record if the
  patient failed to attend the appointment.
  

----------

.. _dfn-service_contact_postcode:

Service Contact - Postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode where the service contact took place.

:Field name: service_contact_postcode

:Data type: string

:Required: yes
:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown. The full list
  of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  - If Service Contact Modality is not 'Face to Face' enter 9999
  - If Service Contact Modality is 'Face to Face' a valid Australian postcode must be
    entered
  
  - As of 1 November 2016, PMHC MDS currently validates that postcodes are in the
    range 0200-0299 or 0800-9999.
  

:Source: `METeOR ID 429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-service_contact_tags:

Service Contact - Tags
^^^^^^^^^^^^^^^^^^^^^^

List of tags for the service contact.

:Field name: service_contact_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-service_contact_type:

Service Contact - Type
^^^^^^^^^^^^^^^^^^^^^^

The main type of service provided in the service contact, as represented by the service type that accounted for most provider time.

:Field name: service_contact_type

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: Assessment
  :2: Structured psychological intervention
  :3: Other psychological intervention
  :4: Clinical care coordination/liaison
  :5: Clinical nursing services
  :6: Child or youth specific assistance NEC
  :7: Suicide prevention specific assistance NEC
  :8: Cultural specific assistance NEC
  :9: Psychosocial support
:Notes:
  Describes the main type of service delivered in the contact, selected from a
  defined list of categories.  Service providers are required
  to report on Service Type for all Service Contacts.
  

----------

.. _dfn-service_contact_venue:

Service Contact - Venue
^^^^^^^^^^^^^^^^^^^^^^^

Where the service contact was delivered, as represented by a code.

:Field name: service_contact_venue

:Data type: string

:Required: yes

:Domain:
  :1: Client's Home
  :2: Service provider's office
  :3: GP Practice
  :4: Other medical practice
  :5: Headspace Centre
  :6: Other primary care setting
  :7: Public or private hospital
  :8: Residential aged care facility
  :9: School or other educational centre
  :10: Client's Workplace
  :11: Other
  :12: Aged care centre - non-residential
  :98: Not applicable (Service Contact Modality is not face to face)
  :99: Not stated
:Notes:
  Values other than ‘Not applicable’ only to be specified when Service Contact
  Modality is ‘Face to Face’.
  
  Note that 'Other primary care setting' is suitable for primary care settings
  such as community health centres.
  

----------

.. _dfn-service_contact_key:

Service Contact Key
^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact. The Service Contact Key is unique and stable for each service contact at the level of the organisation.

:Field name: service_contact_key

:Data type: string [2,50]

:Required: yes
:Notes:
  Service contact keys are case sensitive and must be valid unicode characters.
  

----------

.. _dfn-value:

Value
^^^^^

The metadata value.

:Field name: value

:Data type: string

:Required: yes

----------

