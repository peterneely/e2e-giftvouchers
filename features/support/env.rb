require 'rspec-expectations'
require 'page-object'
require 'page_navigation'
require 'require_all'
require 'data_magic'
require 'fig_newton'

require_rel 'pages'

class CustomWorld
  include PageObject::PageFactory
end

World do
  CustomWorld.new
end

#PageObject::PageFactory.routes = {
#    :default => [
#        [HomePage, :checkout],
#        [GiftVoucherPage]
#    ]
#}
