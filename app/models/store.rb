class Store < OpenStruct

  def self.service
    BestBuyService.new
  end

  def self.search_by_zip(zip)
    store_results = service.get_stores(zip)["stores"]
    store_results.map {|store| Store.new(store)}
  end

end
