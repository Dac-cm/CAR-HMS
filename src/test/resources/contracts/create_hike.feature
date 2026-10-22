Feature: Create a hike
  Scenario: Organizer creates a valid hike
    Given an approved organizer with a valid certification
    And a permitted NCC trail open during the selected season
    When the organizer submits valid hike details
    Then the system creates the hike with a unique identifier
    And the hike status is open
