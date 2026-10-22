Feature: Cancel a hike sign-up

  Scenario: Confirmed hiker cancels before the deadline
    Given a hiker has a confirmed registration
    And the registration deadline has not been reached
    When the hiker cancels the registration
    Then the registration status becomes cancelled

  Scenario: Waitlisted hiker cancels
    Given a hiker is on a hike waitlist
    And the registration deadline has not been reached
    When the hiker cancels the registration
    Then the registration is removed from the active waitlist

  Scenario: First waitlisted hiker is promoted
    Given a confirmed registration is cancelled before the deadline
    And at least one hiker is waiting on the waitlist
    When the system processes the cancellation
    Then the first hiker on the waitlist receives the available place
    And the promoted hiker is notified

  Scenario: Cancellation is rejected after the deadline
    Given the registration deadline has been reached
    And a hiker has an active registration
    When the hiker attempts to cancel the registration
    Then the system rejects the cancellation
