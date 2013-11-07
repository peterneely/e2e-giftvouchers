module Header
  include PageObject
  include DataMagic

  text_field(:search, :id => 'search_term')
  link(:shortlist, :id => 'shortlist_nav')
  link(:shopping_bag, :href => "#{FigNewton.base_url}/ShoppingBag.aspx")
  button(:submit_search, :id => 'ctl00_contentHeader_ctlHeader1_searchButton')

  def method_missing (method, *args, &block)
    @world.send(method, *args, &block)
  end

  def search(data = {})
    populate_page_with data_for(:search_box, data)
    submit_search
  end

end