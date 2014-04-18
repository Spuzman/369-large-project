Feature: User views artist

  Scenario: User views artist
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
    When I am on the show page for that artist
    Then I should see "Example Artist"
      And I should see "Example Movement"
      And I should see "1900-01-01"
      And I should see "1970-05-05"
