require "rails_helper"

RSpec.describe "user can enter in a zip code" do
  it "returns a list of stores within constraints " do
    visit "/"

    fill_in :q, with: "80202"
    click_on "Search"
    expect(current_path).to eq("/search")


    within("#Best Buy - Belmar") do
      # expect(page).to have_content("")
      # expect(page).to have_content("")
      # expect(page).to have_content("")
      # expect(page).to have_content("")
    end
  end
end
