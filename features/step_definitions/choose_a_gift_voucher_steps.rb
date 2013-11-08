Given(/^a customer is choosing a gift voucher on (.*)$/) do |locale|
  on(HomePage).set_locale(locale)
  visit GiftVoucherPage
end

Then(/^the customer should be able to choose (.*)$/) do |vouchers_available|
  on(GiftVoucherPage).vouchers_available?(vouchers_available).should be_true
end