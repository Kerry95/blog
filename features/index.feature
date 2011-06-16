Feature: index feature

  Scenario: Page contents
    Given I am on the home page

    Then I should see "Hello, Rails!"

  Scenario: Going to the blog page
    Given I am on the home page

    When I follow "My Blog"

    Then I should see "Listing posts"
    
    
    