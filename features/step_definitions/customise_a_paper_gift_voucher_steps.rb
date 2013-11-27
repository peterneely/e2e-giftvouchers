Given(/^an online customer has selected a paper gift voucher$/) do
  navigate_to(GiftVoucherPaperPage, :using => :default_paper)
end

Given(/^a German customer has selected a paper gift voucher$/) do
  navigate_to(GiftVoucherPaperPage, :using => :german_paper)
end

Then(/^do not display the voucher holder design section$/) do
  @current_page.designs_hidden?.should be_true
end
