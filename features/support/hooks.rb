require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :firefox
  #@browser.goto("#{FigNewton.base_url}/default.aspx?q=#{FigNewton.default_promotion}|||||||||||||||")
end

After do
  @browser.close
end