feature "attacking" do
  scenario "attacking p2 confirmation" do
    sign_in_and_play
    click_link "Attack!"
    expect(page).to have_content "Harry Kim attacked Riker"
  end
end
