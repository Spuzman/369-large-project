Feature: User views movement

  Scenario: User views movement
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1500-01-02" and died "1599-01-01"
    When I am on the show page for that movement
    Then I should see "Example Movement"
      And I should see "This is an example description."
      And I should see "Example Artist"

  Scenario: User clicks Artist link
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1500-01-02" and died "1599-01-01"
    When I am on the show page for that movement
       And I follow "Example Artist"
    Then I should see "1500-01-02"
       And I should see "1599-01-01"
