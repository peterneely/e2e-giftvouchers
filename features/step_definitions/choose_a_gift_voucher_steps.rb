Given(/^a customer is choosing a gift voucher on (.*)$/) do |locale|
  on(HomePage).set_locale(locale)
  visit GiftVoucherPage
end