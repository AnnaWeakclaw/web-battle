
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
    expect(page).to have_content("90")
  end

  scenario "whose turn is it" do
    sign_and_play
    expect(page).to have_content("Bob is making a move")
  end

  scenario "player 1 attacked and now..." do
    sign_and_play
    click_button "Attack"
    #click_link 'done'
    expect(page).to have_content("Emma is making a move")
  end

  scenario "displays points for player 1" do
    sign_and_play
    expect(page).to have_content("Player 1 has 100 points")
  end

end