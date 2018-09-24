Feature: Login functionality

  Scenario Outline: As a user I should able to see search results
    Given I am on the home page
    When I search with any <keyword> keyword
    Then I should able to see expected result

  Examples:
    |keyword|
    |selenium|
#    |automation|
#    |cucumber  |

