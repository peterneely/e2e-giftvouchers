require_relative '../modules/header'
require_relative '../modules/footer'

class BasePage
  include Header
  include Footer
  include PageObject
end