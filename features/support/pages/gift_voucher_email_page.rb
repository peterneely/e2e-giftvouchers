class GiftVoucherEmailPage
  include PageObject

  page_url "#{FigNewton.base_url}/GiftVoucherEmail.aspx"

  text_field(:recipient_name, :id => 'recipient-name')
  text_field(:customer_name, :id => 'customer-name')
  text_field(:delivery_date, :id => 'delivery-date')
  text_field(:message, :id => 'message')

  image(:design_1, :id => 'design-1')
  image(:design_2, :id => 'design-2')
  image(:design_3, :id => 'design-3')
  image(:design_4, :id => 'design-4')
  image(:design_5, :id => 'design-5')
  image(:design_6, :id => 'design-6')

  image(:selected_design, :class => 'selected')
  span(:selected_amount, :class => 'selected')
  text_field(:entered_amount, :id => 'entered-amount')

  image(:preview_image, :id => 'preview-image')
  label(:preview_roundel, :id => 'preview-roundel')
  label(:preview_recipient_name, :id => 'preview-recipient-name')
  label(:preview_sender_name, :id => 'preview-sender-name')
  label(:preview_delivery_date, :id => 'preview-delivery-date')
  label(:preview_message, :id => 'preview-message')

  def vouchers_available?(vouchers_available)
    true
  end

  def update(information)
    populate_page_with data_for(:gift_voucher_email_page, information)
  end

  def preview_updated?
    selected_design_element.href == preview_image_element.href &&
        voucher_amount == preview_roundel_element.text &&
        recipient_name_element.text == preview_recipient_name_element.text &&
        sender_name_element.text == preview_sender_name_element.text &&
        delivery_date_element.text == preview_delivery_date_element.text &&
        message_element.text == preview_message_element.text
  end

  private

  def voucher_amount
    selected_amount? ? selected_amount_element.text : entered_amount_element.text
  end
end