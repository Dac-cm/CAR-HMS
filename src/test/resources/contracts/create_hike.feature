Feature: Create a hike

  Scenario: Organizer creates a valid hike
    Given an approved organizer has a certification valid on the hike date
    And the organizer's level is sufficient for the hike difficulty
    And the selected NCC trail permits hiking during the selected season
    And all required hike details are valid
    And the registration deadline is within the permitted two-week period before the hike
    When the organizer submits the hike details
    Then the system creates the hike with a unique identifier
    And the hike status is open
    And the system records the creating organizer

  Scenario: Hike creation is rejected for an invalid trail
    Given the selected trail is not permitted for the proposed hike
    When the organizer submits the hike details
    Then the system rejects hike creation

  Scenario: Hike creation is rejected for an invalid certification
    Given the organizer's certification is expired or insufficient for the hike
    When the organizer submits the hike details
    Then the system rejects hike creation

  Scenario: Hike creation is deferred when NCC validation is unavailable
    Given the NCC trail data cannot be validated
    When the organizer submits the hike details
    Then the system does not create an unvalidated hike
    And the operation is rejected or deferred until validation is possible
