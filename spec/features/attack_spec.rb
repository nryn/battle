feature "attacking" do
  scenario "attacking p2 confirmation" do
    sign_in_and_play
    click_link "Attack!"
    expect(page).to have_content "Harry Kim attacked Riker"
  end

  scenario "can see reduced hit points once attacked" do
    sign_in_and_play
    click_link "Attack!"
    expect(page).not_to have_content('Riker HP: 100')
    expect(page).to have_content('Riker HP: 90')
  end

end
