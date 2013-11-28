Given(/^an online customer has selected a paper gift voucher$/) do
  navigate_to(GiftVoucherPaperPage, :using => :default_paper)
end

Given(/^a customer is choosing a paper gift voucher on (.*)$/) do |locale|
  on(HomePage).navigate_to_gift_vouchers_for(locale)
  on(GiftVoucherPage).paper_button
end

Then(/^the voucher holder design should be (.*)$/) do |visible|
  on(GiftVoucherPaperPage).designs? == visible
end

Then(/^the voucher denominations should be (.*)$/) do |denominations|
  on(GiftVoucherPaperPage).denominations.should == denominations
end

When(/^the default selected denomination should be (.*)$/) do |default|
  on(GiftVoucherPaperPage).selected_denomination_matches?(default).should be_true
end