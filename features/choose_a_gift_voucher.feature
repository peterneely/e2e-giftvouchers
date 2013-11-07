Feature: Choose a gift voucher
  As an online customer
  I would like to be able to choose a gift voucher
  so that I can make a gift to my friends

  Scenario Outline: Vouchers available by locale
    Given a customer is choosing a gift voucher on <locale>
    #Then the customer should be able to choose <vouchers_available>

    Examples: Regional sites and vouchers available
      | locale | vouchers_available |
      | UK     | email or paper     |
      | DE     | email or paper     |
      | US     | email or paper     |
      | AU     | email              |
