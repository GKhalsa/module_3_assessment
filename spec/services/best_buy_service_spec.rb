require "rails_helper"

RSpec.describe BestBuyService do
  context "#get_stores()" do
    it "should return stores based on zip" do
      # VCR.use_cassette("walmart_service#get_categories") do
        service  = WalmartService.new
        response = service.get_stores("80202")

        expect(response.count).to eq(25)
        expect(response.first[:storeId]).to eq("91083")
        expect(response.last[:storeId]).to eq("2636")
      # end
    end
  end
end
