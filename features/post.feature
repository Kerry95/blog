Feature: post feature

Scenario: Adding a post
    Given I perform HTTP authentication as "admin" "password"
    And I am on the home page
    
    When I follow "My Blog"
    And I follow "New Post"
    
    Then I should see "New post"
    
    When I fill in "Name" with "Fred"
    And I fill in "Title" with "test1"
    And I fill in "Context" with "this is a test"
    And I press "Create Post"
    
    Then I should see "Post was successfully created."
    
    When I fill in "Commenter" with "Bob"
    And I fill in "Body" with "testing"
    And I press "Create Comment"
    
    Then I should see "Name: Fred"
    
    When I follow "Destroy Comment"
    
    Then I should see "Name: Fred"
    And show me the page