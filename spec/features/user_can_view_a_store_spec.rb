require "rails_helper"

RSpec.describe "user can enter in a zip code" do
  it "returns a list of stores within constraints " do
    visit "/"

    fill_in :q, with: "80202"
    click_on "Search"
    expect(current_path).to eq("/search")
    click_on("Belmar")

    expect(page).to have_content("Best Buy - Belmar")
    expect(page).to have_content("BigBox")
    expect(page).to have_content("Lakewood")
    expect(page).to have_content("80226")
    expect(page).to have_content("384 S. Wadsworth Blvd")


    expect(page).to have_content("Mon: 10am-9pm
                                  Tue: 10am-9pm
                                  Wed: 10am-9pm
                                  Thurs: 10am-9pm
                                  Fri: 10am-9pm
                                  Sat: 10am-9pm
                                  Sun: 10am-8pm")
  end
end
