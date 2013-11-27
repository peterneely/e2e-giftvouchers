class GiftVoucherPaperPage
  include PageObject
  include DataMagic

  page_url "#{FigNewton.base_url}/GiftVoucherPaper.aspx"

  div(:design, :id => 'voucher-designs')
  span(:selected_amount, :class => 'selected')
  text_area(:message, :id => 'voucher-message-input')
  label(:design1, :class => 'design1')
  label(:design2, :class => 'design2')
  span(:character_count, :id => 'voucher-message-character-count')
  button(:add_to_bag, :id => 'voucher-add-to-bag')
  span(:bag_count, :id => 'miniBKQty')

  def vouchers_available?(vouchers_available)
    true
  end

  def update
    populate_page_with data_for(:gift_voucher_paper_page)
  end

  def designs?
    design_element.exists? ? 'visible' : 'hidden'
  end

  def character_count_updated?
    message.length == character_count[/^[^\/]*/].to_i
  end

  def valid?
    populate_page_with data_for(:gift_voucher_paper_page)
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
    true
  end

  def error_message_visible?
    add_to_bag
    message_element.class_name.include? 'validationElement'
  end

  def voucher_not_added?
    bag_count.to_i == 0
  end
end