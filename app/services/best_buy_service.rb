class BestBuyService

  def initialize
    @_connection = Faraday.new(url: "https://api.bestbuy.com/v1/")
  end

  def get_stores
    connection.get("stores(area(80202,25))?format=json&show=storeId,storeType,name&pageSize=15&apiKey=qy8vdpfcgsxtfw657mnbu7nc")
  end

  private

    def parse(response)
      JSON.parse(response.body, symbolized_names: true)
    end

    def connection
      @_connection
    end

end
