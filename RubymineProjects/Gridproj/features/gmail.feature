Feature: Gmail functionality

  Scenario Outline: Verify login functionality
    Given I am on the gmail page
    When I enter valid <email> and <password> on sign in page
    Then I should able to login on gmail

  Examples:
    | email       | password  |
    | swtbarnwal| Thareja@1124 |