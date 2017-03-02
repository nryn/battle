describe "entering and submitting player names", :type => :feature do

  it "allows name entry and submission" do
    sign_in_and_play
    expect(page).to have_content('Harry Kim vs. Riker')
  end
end
