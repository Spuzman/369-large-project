Feature: User searches for Artist

  Scenario: User searches for empty value
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And artist "Test Artist" exists with movement name "Example Movement" and born "1750-01-01" and died "1830-05-05"
      And I am on the artist page
    When I press "Search"
    Then I should see "Search cannot be blank"

  Scenario: User searches for "Test"
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And artist "Test Artist" exists with movement name "Example Movement" and born "1750-01-01" and died "1830-05-05"
      And I am on the artist page
    When I fill in "Search" with "Test"
      And I press "Search"
    Then I should see "Test Artist"
      And I should not see "Example Artist"

  Scenario: User searches for "Example"
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And artist "Test Artist" exists with movement name "Example Movement" and born "1750-01-01" and died "1830-05-05"
      And I am on the artist page
    When I fill in "Search" with "Example"
      And I press "Search"
    Then I should see "Test Artist"
      And I should see "Example Artist"

  Scenario: User searches for "1750"
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And artist "Test Artist" exists with movement name "Example Movement" and born "1750-01-01" and died "1830-05-05"
      And I am on the artist page
    When I fill in "Search" with "1750"
      And I press "Search"
    Then I should see "Test Artist"
      And I should not see "Example Artist"
