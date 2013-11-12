Given(/^an online customer has selected an email gift voucher$/) do
  navigate_to(GiftVoucherEmailPage)
end

When(/^the customer has updated any of the following information:$/) do |information|
  @current_page.update information
end

Then(/^the preview is updated immediately$/) do
  @current_page.preview_updated? should be_true
end