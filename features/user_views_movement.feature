Feature: User views movement

  Scenario: User views movement
    Given movement "Example Movement" exists with description "This is an example description."
    When I am on the show page for that movement
    Then I should see "Example Movement"
      And I should see "This is an example description."
