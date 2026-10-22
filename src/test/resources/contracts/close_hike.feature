Feature: Close a hike
  Scenario: Registration deadline is reached
    Given a hike is open
    And its registration deadline has been reached
    When the system closes the hike
    Then the hike status becomes closed
    And new sign-ups and cancellations are no longer accepted
