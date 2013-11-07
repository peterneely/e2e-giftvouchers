module Impersonators
  def uk_site
    @uk_site ||= UkSite.new(self)
  end

  def de_site
    @de_site ||= DeSite.new(self)
  end

  def us_site
    @us_site ||= UsSite.new(self)
  end

  def au_site
    @au_site ||= AuSite.new(self)
  end
end