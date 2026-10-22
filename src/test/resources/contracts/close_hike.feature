Feature: Close a hike

  Scenario: Registration deadline is reached
    Given a hike has not been cancelled
    And its registration deadline has been reached
    When the system closes the hike
    Then the hike status becomes closed
    And new sign-ups and cancellations are no longer accepted
    And the status transition and its time are recorded

  Scenario: Full hike reaches its registration deadline
    Given a hike is full and has not been cancelled
    And its registration deadline has been reached
    When the system closes the hike
    Then the hike status becomes closed
    And the hike's capacity information is preserved
