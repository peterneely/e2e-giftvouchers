Given(/^a customer is choosing a gift voucher on (.*)$/) do |locale|
  on(HomePage).set_locale(locale)
  if(locale.downcase != 'au') then visit GiftVoucherPage else visit GiftVoucherEmailPage end
end

Then(/^the customer should be able to choose (.*)$/) do |vouchers_available|
  @current_page.vouchers_available?(vouchers_available).should be_true
end