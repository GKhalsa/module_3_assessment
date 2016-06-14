require "rails_helper"

RSpec.describe "GET /api/v1/items/1" do
  it "should return selected item" do
    item_one = create(:item)
    item_two = create(:item)

    get "/api/v1/items/#{item_one.id}"

    expect(response.status).to eq(200)

    expect(parsed_json).to eq(
    "id" => item_one.id,
    "name" => item_one.name,
    "description" => item_one.description,
    "image_url" => item_one.image_url
    )
  end

  
end
