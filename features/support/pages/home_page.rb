class HomePage # < BasePage
  include PageObject
  include DataMagic

  link(:gift_vouchers, :xpath => '//div[@id="footer"]//a[contains(@href, "GiftVoucher")]')

  def navigate_to_gift_vouchers_for(locale)
    set_locale(locale)
    gift_vouchers
  end

  private

  def set_locale(locale)
    locale = locale.downcase
    url_segment = data_for(:locale_ids)[locale]
    url = "#{FigNewton.base_url}/Country/Change/#{url_segment}"
    navigate_to url
  end
end