require 'rspec-expectations'
require 'page-object'
require 'page_navigation'
require 'require_all'
require 'data_magic'
require 'fig_newton'
require 'faker'

require_rel 'pages'

class CustomWorld
  include PageObject::PageFactory
end

World do
  CustomWorld.new
end

PageObject::PageFactory.routes = {
    :default => [
        [HomePage, :navigate_to_gift_vouchers_for, 'UK'],
        [GiftVoucherPage, :email_button],
        [GiftVoucherEmailPage]
    ],
    :route_for_au => [
        [HomePage, :navigate_to_gift_vouchers_for, 'AU'],
        [GiftVoucherEmailPage]
    ]
}
