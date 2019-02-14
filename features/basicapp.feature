@basicapp @functional

  Feature: Create a basic app to send an SMS or an Email

  @smsoremail
  Scenario: Create basic app to send sms & email
    Given I open quick fuse app link
    Then  I click on Create an app button
    Then  I see a popup
    And   I click on Let's get started button
    Then  I see application panel
    And   I see Basic tab is opened with following sections on left hand side column
      | Hang Up or Exit    |
      | Simple Prompt      |
      | Multipart Prompt   |
      | Jump to Page       |
      | Simple Menu        |
      | Transfer           |
      | Yes or No          |
      | Multipart + Yes/No |
      | Digits Input       |
      | Multiple Choice    |
      | Voice Recording    |
      | Label              |
    Then  I see Messaging tab on left hand side column
    And   I click on Messaging tab
    Then  I see following sections
      | Fetch Twitter Feed |
      | Send an Email      |
      | Send an SMS        |
    And   I see Start module on application panel
    Then  I click on New page button
    Then  I see New Page popup
    And   I enter name for "New App"
    And   I click on create button
    Then  I click on Messaging tab
    Then  I drag Send an SMS module to application panel
    And   I see Sent and Not Sent ports
    And   I connect Start and Send an SMS modules
    Then  I enter number for "Phone Number"
    And   I enter message for "Message Phrase"
    Then  I drag another component Send an Email to application panel
    And   I join Send an SMS component from Not Sent port to Send an Email component
    Then  I click on Basic tab
    Then  I drag Hang Up or Exit component to application panel
    And   I join Hang Up or Exit component from Sent port to Send an SMS component
    Then  I drag another Hang up or Exit component to application panel
    And   I join Hang Up or Exit component from Not Sent port to Send an Email component
    And   I join Hang Up or Exit component from Sent port to Send an Email Component

