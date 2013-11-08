class GiftVoucherPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/GiftVoucherEmail.aspx"

  image(:email_voucher, :id => 'email_gift_voucher_img')
  image(:paper_voucher, :id => 'paper_gift_voucher_img')

  def vouchers_available?(vouchers_available)
    correct_email_image_exists = email_voucher? && email_voucher_element.src =~ /#{$locale}/
    correct_paper_image_exists = paper_voucher? && paper_voucher_element.src =~ /#{$locale}/
    paper_voucher_available = vouchers_available =~ /paper/
    correct_images_exist = paper_voucher_available ? correct_email_image_exists && correct_paper_image_exists : correct_email_image_exists
  end
end