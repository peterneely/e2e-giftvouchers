class GiftVoucherEmailPage
  include PageObject

  page_url "#{FigNewton.base_url}/GiftVoucherEmail.aspx"

  def vouchers_available?(vouchers_available)
    true
  end
end