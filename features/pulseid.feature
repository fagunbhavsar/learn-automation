@pulseid @functional

  Feature: Pulse ID app login
 @loginintoapp
  Scenario: Login into PulseiD app via VOL
    Given I open PulseiD app in the browser
    Then I click on Sign in with VOL button
    Then I enter email address and password
    And I click on Sign in button
    Then I should be taken to Offers tab view





