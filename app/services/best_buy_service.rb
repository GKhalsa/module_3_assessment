class BestBuyService

  def initialize
    @_connection = Faraday.new(url: "https://api.bestbuy.com/v1/")
  end

  def get_stores(zip)
    # connection.get("stores(area(#{zip},25))?format=json&show=storeId,storeType,name&pageSize=15&apiKey=qy8vdpfcgsxtfw657mnbu7nc")
    response = connection.get do |req|
      req.url "stores(area(#{zip},25))?"
      req.params["show"] = "longName,city,distance,phone,storeType,storeId"
      req.params["format"] = "json"
      req.params["pageSize"] = "15"
      req.params["apiKey"] = ENV['BEST_BUY_KEY']
    end
    parse(response)
  end

  def get_store(id)
    response = connection.get do |req|
      req.url "stores(area(#{zip},25))?"
      req.params["show"] = "longName,city,distance,phone,storeType,storeId"
      req.params["format"] = "json"
      req.params["pageSize"] = "15"
      req.params["apiKey"] = ENV['BEST_BUY_KEY']
    end
    parse(response)
  end

  private

    def parse(response)
      JSON.parse(response.body, symbolized_names: true)
    end

    def connection
      @_connection
    end

end
