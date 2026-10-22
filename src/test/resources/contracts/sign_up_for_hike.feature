Feature: Sign up for a hike

  Scenario: Eligible hiker signs up when capacity is available
    Given an authenticated hiker has active membership
    And the hiker's skill level is eligible for an open hike
    And the registration deadline has not been reached
    And the hike has an available place
    When the hiker signs up for the hike
    Then the registration is confirmed
    And a confirmation email is sent

  Scenario: Hiker joins the waitlist when a hike is full
    Given an authenticated hiker has active membership
    And the hiker is eligible for a full hike
    And the registration deadline has not been reached
    When the hiker signs up for the hike
    Then the registration is added to the end of the waitlist
    And the hiker receives their waitlist position

  Scenario: Ineligible hiker cannot sign up
    Given a hiker has inactive membership or an insufficient skill level
    When the hiker attempts to sign up for a hike
    Then the system rejects the registration

  Scenario: Sign-up is rejected after the deadline
    Given the registration deadline has been reached
    When a hiker attempts to sign up for the hike
    Then the system rejects the registration
