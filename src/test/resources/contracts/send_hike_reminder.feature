Feature: Send a hike reminder
  Scenario: Reminder is sent with a weather forecast
    Given a hike is scheduled for the following day
    And confirmed participants exist
    And the weather service provides a forecast
    When the system sends the hike reminder
    Then confirmed participants receive the hike details
    And a rain or snow warning is included when applicable

  Scenario: Weather service is unavailable
    Given a hike is scheduled for the following day
    And confirmed participants exist
    And the weather service is unavailable
    When the system sends the hike reminder
    Then confirmed participants receive the reminder without a weather warning
