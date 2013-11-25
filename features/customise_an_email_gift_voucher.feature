Feature: Customise an e-mail gift voucher
  As an online customer
  I would like to be able to customise an email gift voucher
  so that I can personalise my gift

  Background: Email gift voucher selected
    Given an online customer has selected an email gift voucher

  @ready
  Scenario: Preview is updated
    And the customer has updated any of the following information:
      | information   |
      | recipient     |
      | sender        |
      | delivery_date |
      | message       |
    Then the preview is updated immediately

  @ready
  Scenario: Message character count is updated
    And they are entering a message
    Then the message character count should update as they type

  @ready
  Scenario: A valid email gift voucher can be added to the shopping bag
  A default design is always pre-selected, so it is always valid

    And the following details are valid:
      | Detail                    | Default value      | Valid if                                                                                                                         |
      | Voucher amount            | £100               | Selected or non-blank, evenly divisible by ten, accepts numbers only, displays as numeric input on mobile device                 |
      | Recipient's name          | Blank              | Non-blank, displays as default input on mobile device                                                                            |
      | Recipient's email address | Blank              | Non-blank, looks like an email address, only one e-mail address, displays as email input on mobile device                        |
      | Your message              | Blank              | Non-blank, maximum of 255 characters including spaces and punctuation, displays as default input on mobile device                |
      | Your name                 | Blank              | Non-blank, displays as default input on mobile device                                                                            |
      | Delivery date             | On a specific date | Selected or non-blank, in the format DD MM YYYY, date is current or future but not past, displays as date input on mobile device |
    Then the customer should be able to add the voucher to their shopping bag

  @ready
  Scenario: An invalid voucher cannot be added to the shopping bag
    And any detail is invalid
    Then the customer should see an error message
    And they should not be allowed to add the voucher to their shopping bag