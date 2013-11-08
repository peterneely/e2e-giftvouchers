class HomePage # < BasePage
  include PageObject
  include DataMagic

  def set_locale(locale)
    $locale = locale.downcase!
    locale_promotion = data_for(:locale_ids)[$locale]
    url = "#{FigNewton.base_url}/default.aspx?q=#{locale_promotion}|||||||||||||||"
    navigate_to url
  end
end