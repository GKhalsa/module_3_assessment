require "rails_helper"

RSpec.describe BestBuyService do
  context "#get_stores()" do
    it "should return stores based on zip" do
      VCR.use_cassette("best_buy_servie#get_stores") do
        service  = BestBuyService.new
        response = service.get_stores("90035")

        expect(response.count).to eq(11)
        expect(response["stores"].first["storeId"]).to eq(179)
        expect(response["stores"].last["storeId"]).to eq(8071)
      end
    end
  end
end

RSpec.describe BestBuyService do
  context "#get_store()" do
    it "should return stores based on id" do
      VCR.use_cassette("best_buy_servie#get_store") do
        service  = BestBuyService.new
        response = service.get_store("2740")

        expect(response["total"]).to eq(1)
        expect(response["stores"].first).to eq(
        "longName"=>"Best Buy Mobile - Cherry Creek Shopping Center",
        "city"=>"Denver",
        "storeType"=>"Mobile",
        "postalCode"=>"80206",
        "region"=>"CO",
        "address"=>"3000 East First Ave",
        "hoursAmPm"=>"Mon: 10am-9pm; Tue: 10am-9pm; Wed: 10am-9pm; Thurs: 10am-9pm; Fri: 10am-9pm; Sat: 10am-9pm; Sun: 11am-6pm"
        )
      end
    end
  end
end
