require "rails_helper"

RSpec.describe "GET /api/v1/items" do
  it "should return all items" do
    item_one = create(:item)
    item_two = create(:item)

    get "/api/v1/items"

    expect(response.status).to eq(200)

    item = parsed_json.first

    expect(item).to eq(
    "id"          => item_one.id,
    "name"        => item_one.name,
    "description" => item_one.description,
    "image_url"   => item_one.image_url
    )
  end
end
