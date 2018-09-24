Feature: testing pageobject model

  Scenario: As a user I should able to verify pageobject model

    Given I visit the website
    When I enter valid keyword in search box
    And I select search button
    Then I should see search result
