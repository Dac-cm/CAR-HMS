Feature: Send a hike reminder

  Scenario: Reminder includes a weather warning when applicable
    Given a non-cancelled hike is scheduled for the following day
    And confirmed participants exist
    And the weather service provides a forecast of rain or snow
    When the system sends the hike reminder
    Then confirmed participants receive the hike date, time, trail, and starting point
    And the reminder includes a weather warning

  Scenario: Reminder is sent without a weather warning
    Given a non-cancelled hike is scheduled for the following day
    And confirmed participants exist
    And the weather service is unavailable
    When the system sends the hike reminder
    Then confirmed participants receive the hike details
    And no weather warning is included

  Scenario: Email delivery fails
    Given a non-cancelled hike is scheduled for the following day
    And confirmed participants exist
    And the email service is unavailable
    When the system attempts to send reminders
    Then the hike remains unchanged
    And unsent reminders are retained for retry
