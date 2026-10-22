Feature: Cancel a hike sign-up
  Scenario: Confirmed hiker cancels before the deadline
    Given a hiker has a confirmed registration
    And the registration deadline has not passed
    When the hiker cancels the registration
    Then the registration status becomes cancelled

  Scenario: Waitlisted hiker cancels
    Given a hiker is on a hike waitlist
    And the registration deadline has not passed
    When the hiker cancels the registration
    Then the registration is removed from the active waitlist
