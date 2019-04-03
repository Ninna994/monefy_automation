@settings
Feature: User is able to use apps basic functions
  Background:
    Given User lands on home screen

  Scenario: User is able to add income and expense in app
    #1st scenario
    When User click on Expenses button
    Then User should see "New expense" as header text
    When User types "5" "0" in application keyboard
    Then "50" should be displayed in green box
    Then User clicks on note field
    Then User types "Voznja do Budve"
    And User clicks on return button
    When User clicks on Choose category button
    Then User swipes up
    And User chooses "Taxi" option
    Then User should see red amount as "£50.00"

#    #2nd scenario
    When User click on Income button
    Then User should see "New income" as header text
    When User types "3" "0" in application keyboard
    Then "30" should be displayed in green box
    Then User clicks on note field
    And User types "Uplacen bonus"
    When User clicks on return button
    When User clicks on Choose category button
    And User chooses "Savings" option
    Then User should see green amount as "£30.00"

# Transfer novca
  Scenario: User is able to transfer money to Payment card
    When User presses transfer button
    Then User clicks on note field
    And User types "Transfer novca na racun"
    Then User clicks on return button
    Then User clicks on Keyboard button at bottom of page
    When User types "9" "3" in application keyboard
    Then "93" should be displayed in green box
    When User clicks on Add Transfer button
    And User swipes from left to right
    Then User should click on dropdown menu
    And User clicks on "Payment card" option
    Then User should see green amount as "£93.00"



