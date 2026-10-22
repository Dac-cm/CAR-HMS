Feature: Update a hiker
  Scenario: Hiker updates personal information
    Given a registered hiker is authenticated
    When the hiker submits valid updated personal information
    Then the system saves the updated information

  Scenario: Administrator updates membership status
    Given an administrator is authenticated
    When the administrator changes a hiker's membership status
    Then the system saves the new membership status
