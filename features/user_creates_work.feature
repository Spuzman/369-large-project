Feature: User creates work 

  Scenario: User creates work
    Given I am on the work page
      And movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
    When I follow "New Work"
    Then I am on the new work form
    When I fill in "Name" with "Example Work"
      And I select "Example Artist" for "Artist"
      And I fill in "Year completed" with "1900"
      And I fill in "Materials" with "oil paints"
      And I fill in "Image" with "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
      And I press "Create Work"
    Then I should see "Work was successfully created"
      And a new work with name "Example Work" should exist belonging to artist with name "Example Artist"
