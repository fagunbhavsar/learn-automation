@pulseid @functional

 @loginintoapp
  Scenario: Login into PulseiD app via VOL
    Given I open PulseiD app in the browser
    Then I click on Sign in with VOL button
    Then I enter email address
    And I enter password
    And I click on Sign in button
    Then I should be taken to Offers tab view

 @createnewrulepercentage
  Scenario: Create new offer rule - percentage discount
    Given I login into Pulseid app
    Then I click on create button under Offers tab from left hand side navigation
    Then I click on Create New Offer button
    Then I click on Create New Offer Rule option
    Then I select Percentage discount option
    And I click on Next button
    Then I select radio button - No, I want to reward all customers
    Then I select radio button for minimum purchase activate offer
    And I enter the value for the discount offer
    And I select radio button to setup the maximum cashback amount
    Then I click on Finish later button
    Then I should be able to search and see newly created offer rule

 @createnewoffer
  Scenario: Create new offer
    Given I login into Pulseid app
    Then I see the offer dashboard
    Then I click on offer rules widget
    Then I search for newly created ruleset
    And I click on Create offer button against the rule
    Then I select the offer rule
    And I click on Next button
    Then I search the merchant name
    And I select industry type
    And I click on Next button
    Then I select radio button for target specific channel
    Then I enter offer title
    And I enter description
    And I click on Next button
    Then I enter description in Terms and Conditions field
    And I click on Skip to preview button
    And I click on No, save changes button
    Then I click on Manage tab
    And I click on Pending for review tab
    And I search for newly created offer
    And I click on approve button against the offer
    And I should see newly approved offer in Ready to fund tab



