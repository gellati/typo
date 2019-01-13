Feature: Create category
  As an administrator
  In order to organise blog posts
  I want to create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully open categories page
    When I follow "Categories"
    Then I should be on the new categories page
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Description"

  Scenario: Successfully create category
    When I follow "Categories"
    And I fill in the following:
     | Name         | CatCategory   |
     | Keywords     | Lorem Ipsum   |
     | Description  | Foobar        |
    And I press "Save"
    Then I should be on the new categories page
    Then I should see "Category was successfully saved"
    Then I should see "CatCategory"
    Then I should see "Lorem Ipsum"

  Scenario: Fail to add empty category
    When I follow "Categories"
    When I fill in "Name" with ""
    And I press "Save"
    Then I should not see "successfully saved"
