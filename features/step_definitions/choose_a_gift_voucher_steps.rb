Given(/^a customer is choosing a gift voucher on (.*)$/) do |locale|
  on(HomePage).navigate_to_gift_vouchers_for(locale)
end

Then(/^the customer should be able to choose (.*)$/) do |vouchers_available|
  voucher_page_for?(vouchers_available).should be_true
end

private

def voucher_page_for? (vouchers_available)
  case vouchers_available
    when 'email or paper'
      on(GiftVoucherPage)
    when 'email'
      on(GiftVoucherEmailPage)
  end
end