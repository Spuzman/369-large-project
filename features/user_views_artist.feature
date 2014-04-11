Feature: User views artist

  Scenario: User views artist
    Given artist "Example Artist" exists with movement_id "Example Movement" and born "1900-1-1" and died "1970-5-5"
    When I am on the show page for that artist
    Then I should see "Example Artist"
      And I should see "Example Movement"
      And I should see "1900-1-1"
      And I should see "1970-5-5"
