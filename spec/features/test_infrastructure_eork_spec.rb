describe "homepage", type: :feature do

  it "shows up" do
    visit '/'
    expect(page).to have_content 'Hello Battle'
  end
end