require "rails_helper"

RSpec.describe "user can enter in a zip code" do
  it "returns a list of stores within constraints " do
    visit "/"

    fill_in :q, with: "80202"
    click_on "Search"
    expect(current_path).to eq("/search")

    expect(page).to have_selector('h5', count: 15)

    within("#303-270-9189") do
      expect(page).to have_content("Denver")
      expect(page).to have_content("3.25")
      expect(page).to have_content("303-270-9189")
      expect(page).to have_content("Mobile")
    end
  end
end
