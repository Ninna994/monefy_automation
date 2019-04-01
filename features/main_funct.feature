@settings
Feature: User is able to use apps basic functions
  Background:
    Given User lands on home screen
  @wip
  Scenario: User is able to add income and expense in app
    #1st scenario
    When User click on Expenses button
    Then User should see "New expense" as header text
    When User types "5" "0" in application keyboard
    Then "50" should be displayed in green box
    When User clicks on Choose category button
    Then User swipes up
    And User chooses "Taxi" option
    Then User should see red amount as "£50.00"

#    #2nd scenario
    When User click on Income button
    Then User should see "New income" as header text
    When User types "3" "0" in application keyboard
    Then "30" should be displayed in green box
    When User clicks on Choose category button
    And User chooses "Savings" option
    Then User should see green amount as "£30.00"



