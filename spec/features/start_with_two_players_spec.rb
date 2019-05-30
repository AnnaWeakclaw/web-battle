
# require_relative "../../app"

feature "two names" do
  scenario "fill in the form" do
    visit("/")
    fill_in :player1, with: "Bob"
    fill_in :player2, with: "Emma"

    click_button "Play!"
    expect(page).to have_content("Bob")
  end
end