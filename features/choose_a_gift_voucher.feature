Feature: Choose a gift voucher
  As an online customer
  I would like to be able to choose a gift voucher
  so that I can make a gift to my friends

  Scenario: Choose a voucher type
    Given a customer is choosing a gift voucher on a non AU site
    Then customer should be able to choose either an email or a paper voucher

  Scenario: Send AU customer straight to an e-mail voucher page
    Given a customer is choosing a gift voucher on the AU site
    Then customer should be able to choose only an email voucher
