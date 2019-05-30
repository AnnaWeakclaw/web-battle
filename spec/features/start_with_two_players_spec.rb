
# require_relative "../../app"

feature "two players" do
  scenario "fill in the form" do
    sign_and_play

    expect(page).to have_content("Bob")
  end

  scenario "displays points for player 2" do
    sign_and_play
    expect(page).to have_content("100")
  end

  scenario "player 1 attacks player 2" do
    sign_and_play
    click_button "Attack"
    expect(page).to have_content("95")
  end

end