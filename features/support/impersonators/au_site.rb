class AuSite < Site

  def visit_gift_voucher_landing_page
    return data_for(:default_user)
  end
end