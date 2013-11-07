require 'rspec-expectations'
require 'page-object'
require 'page_navigation'
require 'require_all'
require 'data_magic'
require 'fig_newton'

require_rel 'pages'

class CustomWorld
  #include DataMagic
  include PageObject::PageFactory
end

World do
  CustomWorld.new
end

#PageObject::PageFactory.routes = {
#    :default => [
#        [HomePage, :checkout],
#        [ShoppingBag, :checkout],
#        [CheckoutPage, :checkout],
#        [DeliveryPage, :proceed_to_payment],
#        [PaymentPage, :confirm],
#        [LoginPage, :login]
#    ]
#}
