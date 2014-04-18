Feature: User creates artist 

  Scenario: User creates artist
    Given I am on the artist page
      And movement "Example Movement" exists with description "This is an example description."
    When I follow "New Artist"
    Then I am on the new artist form
    When I fill in "Name" with "Example Artist"
      And I select "Example Movement" for "Movement"
      And I fill in "Born" with "1900-01-01"
      And I fill in "Died" with "1980-02-20"
      And I press "Create Artist"
    Then I should see "Artist was successfully created"
      And a new artist with name "Example Artist" should exist belonging to movement with name "Example Movement"
