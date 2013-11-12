Feature: Customise an e-mail gift voucher
  As an online customer
  I would like to be able to customise an email gift voucher
  so that I can personalise my gift

  Background: Email gift voucher selected
    Given an online customer has selected an email gift voucher

  Scenario: Preview is updated
    And the customer has updated any of the following information:
      | information    |
      | recipient_name |
      | customer_name  |
      | delivery_date  |
      | message        |
    Then the preview is updated immediately

  Scenario: Message character count is updated
    And they are entering a message
    Then the message character count should update as they type

  Scenario: A valid email gift voucher can be added to the shopping bag
  A default design is always pre-selected, so it is always valid

    And the following details are valid:
      | Detail                    | Default value      | Valid if                                                                      |
      | Voucher amount            | £100               | Selected or non-blank and evenly divisible by ten                             |
      | Recipient's name          | Blank              | Non-blank                                                                     |
      | Recipient's email address | Blank              | Non-blank and looks like an email address and only one e-mail address         |
      | Your message              | Blank              | Non-blank and maximum of 500 characters, including spaces and punctuation     |
      | Your name                 | Blank              | Non-blank                                                                     |
      | Delivery date             | On a specific date | Selected or non-blank and in the format DD MM YYYY and current or future date |
    Then the customer should be able to add the voucher to their shopping bag

  Scenario: An invalid voucher cannot be added to the shopping bag
    And any detail is invalid
    Then the customer should see an error message
    And they should not be allowed to add the voucher to their shopping bag