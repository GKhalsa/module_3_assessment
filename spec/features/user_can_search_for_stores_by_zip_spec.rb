require "rails_helper"

RSpec.descirbe "user can enter in a zip code" do
  it "returns a list of stores within constraints " do
    visit "/"

    fill_in :search, with: "80202"
    click_on "search"
    expect(current_path).to eq("/search")
  end
end






  # As a user
  # When I visit "/"
  # And I fill in a search box with "80202" and click "search"
  # Then my current path should be "/search" (ignoring params)
  # And I should see stores within 25 miles of 80202
  # And I should see a message that says "17 Total Stores"
  # And I should see exactly 15 results
  # And I should see the long name, city, distance, phone number and store type for each of the 15 results


# RSpec.describe "user can enter in a zip code" do
#   it "returns a list of closest stations" do
#     visit "/"
#     fill_in :q, with: "80203"
#     click_on("Locate")
#     expect(current_path).to eq("/search")
#
#     within("#UDR") do
#       expect(page).to have_content("800 Acoma St")
#       expect(page).to have_content("ELEC")
#       expect(page).to have_content("Miles Away: 0.3117")
#       expect(page).to have_content("24 hours daily")
#     end
#   end
# end
