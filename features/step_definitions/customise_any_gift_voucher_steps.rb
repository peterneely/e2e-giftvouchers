When(/^they are entering a message$/) do
  @current_page.update
end

Then(/^the message character count should update as they type$/) do
  @current_page.character_count_updated?.should be_true
end

When(/^the following details are valid:$/) do |table|
  @current_page.valid?.should be_true
end

Then(/^the customer should be able to add the voucher to their shopping bag$/) do
  @current_page.voucher_added?.should be_true
end

When(/^any detail is invalid$/) do
  @current_page.invalid?.should be_true
end

Then(/^the customer should see an error message$/) do
  @current_page.error_message_visible?.should be_true
end

When(/^they should not be allowed to add the voucher to their shopping bag$/) do
  @current_page.voucher_not_added?.should be_true
end

