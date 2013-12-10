Feature: Customise a paper gift voucher
  As an online customer
  I would like to be able to customise a paper gift voucher
  so that I can personalise my gift

  Scenario Outline: 1: Paper voucher holder design available by locale
  Paper vouchers are not available to AU customers

    Given a customer is choosing a paper gift voucher on <locale>
    Then the voucher holder design should be <visibility>

  Examples: Designs available by locale
    | locale | visibility |
    | UK     | visible    |
    | DE     | hidden     |
    | US     | visible    |

  Scenario Outline: 2: Paper voucher denominations available by locale
  Paper vouchers are not available to AU customers

    Given a customer is choosing a paper gift voucher on <locale>
    Then the voucher denominations should be <denominations>
    And the default selected denomination should be <default>

  Examples: Denominations available by locale
    | locale | denominations                      | default |
    | UK     | 500, 200, 150, 100, 80, 50, 40, 20 | 100     |
    | DE     | 500, 200, 150, 100, 80, 50, 40, 20 | 100     |
    | US     | 1000, 500, 200, 150, 100, 80, 50   | 100     |

  Scenario: 3: Message character count is updated
    Given an online customer has selected a paper gift voucher
    And they are entering a message
    Then the message character count should update as they type

  Scenario: 4: A valid paper gift voucher can be added to the shopping bag
  A default design is always pre-selected, so it is always valid.

    Given an online customer has selected a paper gift voucher
    And the following details are valid:
      | Detail         | Default value | Valid if                                                                  |
      | Voucher amount | £100          | Selected or amount from a list with pre-set values                        |
      | Your message   | Blank         | Non-blank and maximum of 255 characters, including spaces and punctuation |
    Then the customer should be able to add the voucher to their shopping bag

  Scenario: 5: An invalid voucher cannot be added to the shopping bag
    Given an online customer has selected a paper gift voucher
    And any detail is invalid
    Then the customer should see an error message
    And they should not be allowed to add the voucher to their shopping bag