Feature: Choose a gift voucher
  As an online customer
  I would like to be able to choose a gift voucher
  so that I can make a gift to my friends

  Scenario: Voucher types for non AU customers
    Given a customer is choosing a gift voucher on a non AU site
    Then the customer should be able to choose either an email or a paper voucher

  Scenario: Voucher types for AU customers
    Given a customer is choosing a gift voucher on the AU site
    Then the customer should be able to choose only an email voucher
