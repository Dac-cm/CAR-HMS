Feature: Cancel a hike
  Scenario: Authorized user cancels a hike before it starts
    Given an organizer or administrator is authorized to cancel a hike
    And the hike has not started
    When the user cancels the hike with a reason
    Then the hike status becomes cancelled
    And all confirmed and waitlisted registrations are cancelled
    And affected participants are emailed the reason
