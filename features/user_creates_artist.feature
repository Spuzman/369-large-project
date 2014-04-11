Feature: User creates artist 

  Scenario: User creates artist
    Given I am on the home page
    When I follow "New Artist"
    Then I am on the new artist form
    When I fill in "Name" with "Example Artist"
      And I fill in "Movement_id" with "Example Movement"
      And I fill in "Born" with "1900-1-1"
      And I fill in "Died" with "1980-2-20"
      And I press "Create Artist"
    Then I should see "Artist was successfully created"
      And a new artist with name "Example Artist" should exist
