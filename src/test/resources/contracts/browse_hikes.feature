Feature: Browse hikes

  Scenario: Visitor browses open hikes
    Given open hikes exist in the system
    When a visitor browses hikes
    Then the system displays open hikes sorted by date
    And each hike shows its title, date, time, trail, organizer, and remaining capacity

  Scenario: Hiker filters hikes
    Given open hikes exist in the system
    When a user searches by trail name, date, or difficulty
    Then the system displays hikes matching the selected criteria

  Scenario: Authenticated hiker views skill-level suitability
    Given a hiker is authenticated
    When the hiker browses open hikes
    Then the system indicates which hikes match the hiker's skill level
