Feature: User creates movement 

  Scenario: User creates movement
    Given I am on the movement page
    When I follow "New Movement"
    Then I am on the new movement form
    When I fill in "Name" with "Example Movement"
      And I fill in "Description" with "This is an example description."
      And I press "Create Movement"
    Then I should see "Movement was successfully created"
      And a new movement with name "Example Movement" should exist
