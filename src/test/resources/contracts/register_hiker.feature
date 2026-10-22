Feature: Register a hiker
  Scenario: Club member registers with a valid invitation
    Given a club member has a valid invitation code
    And the member accepts the liability waiver
    When the member submits valid hiker details
    Then the system creates an active hiker account
