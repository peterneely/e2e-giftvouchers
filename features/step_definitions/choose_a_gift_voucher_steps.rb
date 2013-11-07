Given(/^a customer is choosing a gift voucher on (a non AU site|the AU site)$/) do |site|
  @site = site
  @site.visit_gift_voucher_landing_page
end