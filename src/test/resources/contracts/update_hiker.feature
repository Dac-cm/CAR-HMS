Feature: Update a hiker

  Scenario: Hiker updates personal information
    Given a registered hiker is authenticated
    When the hiker submits valid updated personal information
    Then the system saves the updated information

  Scenario: Administrator updates membership status
    Given an administrator is authenticated
    And the hiker exists
    When the administrator changes the hiker's membership status
    Then the system saves the new membership status

  Scenario: Administrator records organizer certification
    Given an administrator is authenticated
    And the hiker exists
    When the administrator records valid certification details and organizer level
    Then the system saves the certification number, issue date, expiry date, and level

  Scenario: User attempts an unauthorized update
    Given a user is authenticated without permission to modify the requested fields
    When the user submits an unauthorized update
    Then the system rejects the update
    And the hiker's information remains unchanged
