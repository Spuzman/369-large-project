Feature: User searches for Works

  Scenario: User searches for empty value
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
      And work "Test Work" exists with artist name "Example Artist" and year completed "1920" and materials "oil paints" and image "http://uploads5.wikipaintings.org/images/claude-monet/madame-monet-and-child.jpg"
      And I am on the work page
    When I press "Search"
    Then I should see "Search cannot be blank"

  Scenario: User searches for "Test"
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
      And work "Test Work" exists with artist name "Example Artist" and year completed "1920" and materials "oil paints" and image "http://uploads5.wikipaintings.org/images/claude-monet/madame-monet-and-child.jpg"
      And I am on the work page
    When I fill in "Search" with "Test"
      And I press "Search"
    Then I should see "Test Work"
      And I should not see "Example Work"

  Scenario: User searches for "oil paints"
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
      And work "Test Work" exists with artist name "Example Artist" and year completed "1920" and materials "oil paints" and image "http://uploads5.wikipaintings.org/images/claude-monet/madame-monet-and-child.jpg"
      And I am on the work page
    When I fill in "Search" with "oil paints"
      And I press "Search"
    Then I should see "Test Work"
      And I should see "Example Work"

  Scenario: User searches for "1920"
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
      And work "Test Work" exists with artist name "Example Artist" and year completed "1920" and materials "oil paints" and image "http://uploads5.wikipaintings.org/images/claude-monet/madame-monet-and-child.jpg"
      And I am on the work page
    When I fill in "Search" with "1920"
      And I press "Search"
    Then I should see "Test Work"
      And I should not see "Example Work"

  Scenario: User searches for "monet"
    Given movement "Example Movement" exists with description "This is an example description."
      And artist "Example Artist" exists with movement name "Example Movement" and born "1900-01-01" and died "1970-05-05"
      And work "Example Work" exists with artist name "Example Artist" and year completed "1900" and materials "oil paints" and image "http://www.tate.org.uk/art/images/work/T/T05/T05010_10.jpg"
      And work "Test Work" exists with artist name "Example Artist" and year completed "1920" and materials "oil paints" and image "http://uploads5.wikipaintings.org/images/claude-monet/madame-monet-and-child.jpg"
      And I am on the work page
    When I fill in "Search" with "monet"
      And I press "Search"
    Then I should not see "Test Work"
