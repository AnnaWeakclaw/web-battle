
# require_relative "../../app"

feature "two names" do
  scenario "fill in the form" do
    sign_and_play

    expect(page).to have_content("Bob")
  end

  scenario "displays points for player 2" do
    sign_and_play
  
    expect(page).to have_content("20")
  end
end