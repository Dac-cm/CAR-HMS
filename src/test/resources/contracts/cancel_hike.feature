Feature: Cancel a hike

  Scenario: Authorized user cancels a hike before it starts
    Given an organizer or administrator is authorized to cancel a hike
    And the hike exists and has not started or already been cancelled
    When the user cancels the hike with a reason
    Then the hike status becomes cancelled
    And the cancellation reason is recorded
    And all confirmed and waitlisted registrations are cancelled
    And affected participants are notified of the reason

  Scenario: Unauthorized user attempts to cancel a hike
    Given the user is neither the hike's organizer nor an administrator
    When the user attempts to cancel the hike
    Then the system rejects the cancellation
    And the hike remains unchanged

  Scenario: Email service is unavailable during cancellation
    Given an authorized user cancels a hike before it starts
    And the email service is unavailable
    When the system processes cancellation notifications
    Then the hike and its registrations remain cancelled
    And unsent notifications are retained for retry
