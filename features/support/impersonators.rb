module Impersonators
  def non_au_site
    @non_au_site ||= NonAuSite.new(self)
  end

  def au_site
    @au_site ||= AuSite.new(self)
  end
end