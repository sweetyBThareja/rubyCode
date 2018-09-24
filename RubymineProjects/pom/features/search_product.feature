Feature: Search random product

  Scenario: As a user, I should able to search random product
    Given I am on the home page
    When I select random product id
    And I search with product name for given product id
    Then I should able to see the search result page