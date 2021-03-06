class GiftVoucherPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/GiftVoucher.aspx"

  link(:paper_button, :href => '/GiftVoucherPaper.aspx')
  link(:email_button, :href => '/GiftVoucherEmail.aspx')

  def vouchers_available?(vouchers_available)
    paper_button? && email_button?
  end

  def select_paper
    paper_button_element.when_visible.click
  end

  def select_email
    email_button_element.when_visible.click
  end
end