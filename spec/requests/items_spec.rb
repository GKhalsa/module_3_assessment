require "rails_helper"

RSpec.describe "GET /api/v1/items" do
  it "should return all items" do
    item_one = create(:item)
    item_two = create(:item)

    get "/api/v1/items"

    binding.pry
    # response = JSON.parse(response.body)

    expect(response.status).to eq(200)


  end
end


# RSpec.describe "GET /api/v1/items" do
#   it "returns all items" do
#     item_one = create(:item)
#     item_two = create(:item, name: "cat")
#
#     get "/api/v1/items"
#
#     expect(parsed_json.count).to eq(2)
#
#     parsed_item = parsed_json.first
#
#     expect(parsed_item).to eq(
#     "id"           =>   item_one.id,
#     "name"         =>   item_one.name,
#     "description"  =>   item_one.description,
#     "unit_price"   =>   "0.01",
#     "merchant_id"  =>   item_one.merchant.id
#     )
#   end
# end
