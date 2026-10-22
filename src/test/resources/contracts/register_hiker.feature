Feature: Register a hiker

  Scenario: Club member registers with valid information
    Given a club member has a valid invitation code
    And the email address is not already associated with an account
    And the member accepts the liability waiver
    When the member submits valid required hiker details
    Then the system creates an active hiker account
    And the account has a unique email address

  Scenario: Registration is rejected for an invalid invitation
    Given a club member has an invalid invitation code
    When the member submits the registration form
    Then the system rejects the registration
    And no hiker account is created

  Scenario: Registration is rejected for a duplicate email
    Given an account already uses the submitted email address
    When a club member submits the registration form
    Then the system rejects the registration
    And the existing account remains unchanged

  Scenario: Minor registers with guardian acceptance
    Given a club member is under 18 years old
    And the member has a valid invitation code
    When the member submits valid details and guardian acceptance
    Then the system records the guardian's name
    And the system creates an active hiker account
