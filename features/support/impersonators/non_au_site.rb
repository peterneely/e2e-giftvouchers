class NonAuSite < Site

  def visit_gift_voucher_landing_page
    base_url = "#{FigNewton.base_url}/default.aspx?q=promotion|||||||||||||||"
    url_uk = base_url.sub!( 'promotion', 'gbpdefault')
    url_de = base_url.sub!( 'promotion', 'dmdefault')
    url_us = base_url.sub!( 'promotion', 'usddefault')

    navigate_to(GiftVoucherPage)
  end

  def login
    visit(LoginPage).login #using default credentials
  end

  def account_login(data = {})
    visit(AccountLoginPage).login data
  end
end