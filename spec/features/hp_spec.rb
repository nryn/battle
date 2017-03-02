feature "print hp" do

  scenario "can see player 2's HP on screen" do
    sign_in_and_play
    expect(page).to have_content('Riker HP: 100')
  end

end
