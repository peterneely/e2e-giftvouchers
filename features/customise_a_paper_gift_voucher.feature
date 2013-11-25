Feature: Customise a paper gift voucher
  As an online customer
  I would like to be able to customise a paper gift voucher
  so that I can personalise my gift

  Background: Paper gift voucher selected
    Given an online customer has selected a paper gift voucher

  @ready
  Scenario: Message character count is updated
    And they are entering a message
    Then the message character count should update as they type

  @ready
  Scenario: A valid paper gift voucher can be added to the shopping bag
  A default design is always pre-selected, so it is always valid.

    And the following details are valid:
      | Detail         | Default value | Valid if                                                                  |
      | Voucher amount | £100          | Selected from a list with pre-set values                                  |
      | Your message   | Blank         | Non-blank and maximum of 255 characters, including spaces and punctuation |
    Then the customer should be able to add the voucher to their shopping bag

  @ready
  Scenario: An invalid voucher cannot be added to the shopping bag
    And any detail is invalid
    Then the customer should see an error message
    And they should not be allowed to add the voucher to their shopping bag