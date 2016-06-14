class SearchController < ApplicationController
  def index
    search = params["q"]
    @stores = Store.search_by_zip(search)
  end

  def show
    @store = Store.search_by_id(params[:id])
  end
end
