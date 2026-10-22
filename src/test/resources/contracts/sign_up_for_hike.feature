Feature: Sign up for a hike
  Scenario: Eligible hiker signs up when capacity is available
    Given an active hiker is eligible for an open hike
    And the hike has an available place
    When the hiker signs up for the hike
    Then the registration is confirmed
    And a confirmation email is sent

  Scenario: Hiker joins the waitlist when a hike is full
    Given an active hiker is eligible for a full hike
    When the hiker signs up for the hike
    Then the registration is added to the end of the waitlist
    And the hiker receives their waitlist position
