describe "homepage", type: :feature do

  it "shows up" do
    visit '/'
    expect(page).to have_content("Player1 Player2")
  end
end