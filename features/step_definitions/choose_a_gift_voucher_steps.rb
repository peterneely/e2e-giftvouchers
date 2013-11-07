#Given(/^a customer is choosing a gift voucher on (.*)$/) do |table|
#  table.hashes.each do |hash|
#    file_name = "#{hash[:sites]}.yml"
#    FigNewton.load(file_name)
#    visit(:HomePage)
#  end
#end
Given(/^a customer is choosing a gift voucher on (.*)$/) do |locale|
  on(HomePage).set_locale(locale)
end