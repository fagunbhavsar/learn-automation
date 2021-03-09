@pulseidapp @functional
  Feature: Create pulse id app offer rule
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

