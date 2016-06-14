require "rails_helper"

RSpec.describe "GET /api/v1/items/1" do
  it "should return selected item" do
    item_one = create(:item)
    item_two = create(:item)

    get "/api/v1/items/#{item_one.id}"

    expect(response.status).to eq(200)

    expect(parsed_json).to eq(
    "id"          => item_one.id,
    "name"        => item_one.name,
    "description" => item_one.description,
    "image_url"   => item_one.image_url
    )
  end
end

RSpec.describe "DELETE /api/v1/items/1" do
  it "should delete selected item" do
    item_one = create(:item)
    item_two = create(:item)

    delete "/api/v1/items/#{item_one.id}"

    expect(response.status).to eq(204)
  end
end

RSpec.describe "POST /ai/v1/items" do
  it "should create item" do
    post "/api/v1/items/?name=sunny&description=suchwow&image_url=www.blingbling.com"

    expect(response.status).to eq(201)

    expect(parsed_json).to eq(
    "id"          => 1,
    "name"        => "sunny",
    "description" => "suchwow",
    "image_url"   => "www.blingbling.com"
    )
  end
end
