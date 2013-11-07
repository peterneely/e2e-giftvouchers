class HomePage # < BasePage
  include PageObject
  include DataMagic

  def set_locale(locale)
    url_promotion = data_for(:url_promotions)[locale.downcase]
    url_for_locale = "#{FigNewton.base_url}/default.aspx?q=#{url_promotion}|||||||||||||||"
    navigate_to url_for_locale
  end
end