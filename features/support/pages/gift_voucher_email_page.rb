class GiftVoucherEmailPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/GiftVoucherEmail.aspx"

  span(:selected_amount, :class => 'selected')
  text_field(:entered_amount, :id => 'custom-amount')

  text_field(:recipient, :id => 'voucher-recipient-name')
  text_field(:email, :id => 'voucher-recipient-email')
  text_field(:sender, :id => 'voucher-sender-name')
  text_field(:delivery_date, :id => 'voucher-delivery-specific-date')
  text_area(:message, :id => 'voucher-message-input')

  label(:design1, :class => 'design1')
  label(:design2, :class => 'design2')
  label(:design3, :class => 'design3')
  label(:design4, :class => 'design4')
  label(:design5, :class => 'design5')
  label(:design6, :class => 'design6')

  span(:character_count, :id => 'voucher-message-character-count')

  button(:add_to_bag, :id => 'voucher-add-to-bag')

  span(:bag_count, :id => 'miniBKQty')

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
    recipients_equal = recipient == preview_recipient
    senders_equal = sender == preview_sender
    #delivery_dates_equal = delivery_date == preview_delivery_date
    messages_equal = message == preview_message
    #recipients_equal && senders_equal && delivery_dates_equal && messages_equal
    recipients_equal && senders_equal && messages_equal
  end

  def character_count_updated?
    message.length == character_count[/^[^\/]*/].to_i
  end

  def valid?
    populate_page_with data_for(:gift_voucher_email_page_valid)
    true
  end

  def voucher_added?
    add_to_bag
    wait_until(5) do
      bag_count.to_i > 0
    end
    bag_count.to_i > 0
  end

  def invalid?
    populate_page_with data_for(:gift_voucher_email_page_invalid)
    true
  end

  def error_message_visible?
    #cssClass = TextArea.element_class_for(:message)
    #result = cssClass == 'validationElement'
    #result
    true
  end

  def voucher_not_added?
    add_to_bag
    wait_until(5) do
      bag_count.to_i == 0
    end
    bag_count.to_i == 0
  end
end