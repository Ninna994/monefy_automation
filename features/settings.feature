@settings
Feature: User is able to setup application for his needs from right side menu using swipe method
  Background:
    Given User lands on home screen
    When User swipes from right to left
    Then User sees Right side menu
    #switch currency
  Scenario: User is able to switch currency
    #first case
    And User clicks on "Settings" in right side menu
    Then User clicks on Currency "GBP"
    And User clicks "Euro" from currency list
    When User clicks on OK button on dialog
    Then User is able to see value "EUR" next to Currency
    When User swipes from center to right
    Then User sees Balance with "€" prefix
 #second case
    When User swipes from right to left
    And User clicks on "Settings" in right side menu
    Then User clicks on Currency "EUR"
    And User clicks "Russian Ruble" from currency list
    When User clicks on OK button on dialog
    Then User is able to see value "RUB" next to Currency
    When User swipes from center to right
    Then User sees Balance with "RUB" prefix
   #third case
    When User swipes from right to left
    And User clicks on "Settings" in right side menu
    Then User clicks on Currency "RUB"
    And User clicks "Serbian Dinar" from currency list
    When User clicks on OK button on dialog
    Then User is able to see value "RSD" next to Currency
    When User swipes from center to right
    Then User sees Balance with "RSD" prefix
      #third case
    When User swipes from right to left
    And User clicks on "Settings" in right side menu
    Then User clicks on Currency "RSD"
    And User clicks "Pound Sterling" from currency list
    When User clicks on OK button on dialog
    Then User is able to see value "GBP" next to Currency
    When User swipes from center to right
    Then User sees Balance with "£" prefix
# Kada se koristi Scenario Outline koriste se i examples ali se aplikacija svaki put restartuje, zato sam rucno pisala scenario
#  Examples:
#    |current_currency_shortcut|new_currency |currency_shortcut|currency_symbol|
#    |GBP                      |Euro         |EUR              |€              |
#    |EUR                      |Russian Ruble|RUB             |RUB            |
#    |RUB                      |Serbian Dinar|RSD             |RSD            |
  Scenario: User is able to change language
    #1st case
    And User clicks on "Settings" in right side menu
    Then User clicks on Language "English"
    And User sees "Select preferable language" as menu header text
    And User clicks "Български" from language list
    When User clicks on OK button on dialog
    Then User sees header text as "Всички сметки"
    #2nd case
    When User swipes from right to left
    And User clicks on "Settings" in right side menu
    Then User clicks on Language "Български"
    And User sees "Изберете желания език" as menu header text
    And User clicks "Hrvatski" from language list
    When User clicks on OK button on dialog
    Then User sees header text as "Svi računi"
      #3rd case
    When User swipes from right to left
    And User clicks on "Settings" in right side menu
    Then User clicks on Language "Hrvatski"
    And User sees "Odaberite željeni jezik" as menu header text
    And User clicks "English" from language list
    When User clicks on OK button on dialog
    Then User sees header text as "All accounts"


