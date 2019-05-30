
def sign_and_play
  visit("/")
  fill_in :player1, with: "Bob"
  fill_in :player2, with: "Emma"

  click_button "Play!"
end