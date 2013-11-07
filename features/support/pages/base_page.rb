require_relative '../modules/header'
require_relative '../modules/footer'

class BasePage
  include Header
  include Footer
  include PageObject

  def method_missing (method, *args, &block)
    @world.send(method, *args, &block)
  end

end