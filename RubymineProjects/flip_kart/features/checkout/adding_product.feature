Feature: Adding product to bag

  Scenario Outline: As a user, I should be able to add product to bag
    Given I visit website as "<user>" user
    When I add random product to bag
    Then I should see the product in bag
  Examples:
    |user |
    |guest |
   # |register |
   # |new user |

  Scenario: As a user, I should able to fill the account form
    Given I visit website as "register" user
    And I navigate to my account page from home page
    Then I should see my account page
    When I enter all valid details on my account page
   # Then I should able to see entered data


