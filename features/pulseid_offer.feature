@pulseid @functional

  Feature: Create new offer using offer rule

@createnewoffer
Scenario: Create new offer
Given I login into Pulseid app
Then I see the offer dashboard
Then I click on offer rules widget
Then I search for newly created ruleset
And I click on Create offer button against the rule
Then I select the offer rule
And I click on Next button
Then I search the merchant name for offer creation
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