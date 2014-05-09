Feature: User searches for Movement

  Scenario: User searches for empty value
    Given movement "Example Movement" exists with description "This is an example description."
      And movement "Test Movement" exists with description "This is an example description."
      And I am on the movement page
    When I press "Search"
    Then I should see "Test Movement"
      And I should see "Example Movement"

  Scenario: User searches for "Test"
    Given movement "Example Movement" exists with description "This is an example description."
      And movement "Test Movement" exists with description "This is an example description."
      And I am on the movement page
    When I fill in "search" with "Test"
      And I press "Search"
    Then I should see "Test Movement"
      And I should not see "Example Movement"

  Scenario: User searches for "example"
    Given movement "Example Movement" exists with description "This is an example description."
      And movement "Test Movement" exists with description "This is an example description."
      And I am on the movement page
    When I fill in "search" with "example"
      And I press "Search"
    Then I should see "Test Movement"
      And I should see "Example Movement"
