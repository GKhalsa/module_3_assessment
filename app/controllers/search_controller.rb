class SearchController < ApplicationController
  def index
    search = params["q"]
    @stores = Store.search_by_zip(search)
  end
end
