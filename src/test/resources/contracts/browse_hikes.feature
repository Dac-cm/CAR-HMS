Feature: Browse hikes
  Scenario: Visitor browses open hikes
    Given open hikes exist in the system
    When a visitor browses hikes
    Then the system displays open hikes sorted by date
    And each hike shows its trail, difficulty, organizer, and remaining capacity
