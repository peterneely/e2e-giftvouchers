class GiftVoucherEmailPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/GiftVoucherEmail.aspx"

  span(:selected_amount, :class => 'selected')
  text_field(:entered_amount, :id => 'voucher-amount-custom')

  text_field(:recipient, :id => 'voucher-recipient-name')
  text_field(:sender, :id => 'voucher-sender-name')
  text_field(:delivery_date, :id => 'voucher-delivery-specific-date')
  text_area(:message, :id => 'voucher-message-input')

  label(:design1, :class => 'design1')
  label(:design2, :class => 'design2')
  label(:design3, :class => 'design3')
  label(:design4, :class => 'design4')
  label(:design5, :class => 'design5')
  label(:design6, :class => 'design6')

  image(:preview_image, :id => 'design-placeholder')
  span(:preview_recipient, :id => 'voucher-preview-recipient-name')
  span(:preview_sender, :id => 'voucher-preview-sender-name')
  span(:preview_delivery_date, :id => 'voucher-preview-delivery-date')
  p(:preview_message, :id => 'voucher-preview-message')

  def vouchers_available?(vouchers_available)
    true
  end

  def update
    populate_page_with data_for(:gift_voucher_email_page)
  end

  def preview_updated?
    rec = recipient
    rec_pre = preview_recipient
    recipients_equal = rec == rec_pre

    sen = sender
    sen_pre = preview_sender
    senders_equal = sen == sen_pre

    del = delivery_date
    del_pre = preview_delivery_date
    delivery_dates_equal = del == del_pre

    mes = message
    mes_pre = preview_message
    messages_equal = mes == mes_pre

    recipients_equal && senders_equal && delivery_dates_equal && messages_equal
  end

  private

  #def voucher_amount
  #  selected_amount? ? selected_amount_element.text : entered_amount_element.text
  #end
end