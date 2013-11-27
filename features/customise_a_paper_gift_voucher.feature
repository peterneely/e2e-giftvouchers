Feature: Customise a paper gift voucher
  As an online customer
  I would like to be able to customise a paper gift voucher
  so that I can personalise my gift

  Scenario: A German customer cannot choose a voucher holder design
    Given a German customer has selected a paper gift voucher
    Then do not display the voucher holder design section

  @ready
  Scenario: Message character count is updated
    Given an online customer has selected a paper gift voucher
    And they are entering a message
    Then the message character count should update as they type

  @ready
  Scenario: A valid paper gift voucher can be added to the shopping bag
  A default design is always pre-selected, so it is always valid.

    Given an online customer has selected a paper gift voucher
    And the following details are valid:
      | Detail         | Default value | Valid if                                                                  |
      | Voucher amount | £100          | Selected or amount from a list with pre-set values                        |
      | Your message   | Blank         | Non-blank and maximum of 255 characters, including spaces and punctuation |
    Then the customer should be able to add the voucher to their shopping bag

  @ready
  Scenario: An invalid voucher cannot be added to the shopping bag
    Given an online customer has selected a paper gift voucher
    And any detail is invalid
    Then the customer should see an error message
    And they should not be allowed to add the voucher to their shopping bag