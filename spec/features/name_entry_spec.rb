describe "entering and submitting player names", :type => :feature do

  it "allows name entry and submission" do
    visit '/'
    within "#name_entry" do
      fill_in 'name_1', with: 'Harry Kim'
      fill_in 'name_2', with: 'Riker'
    end
    click_button 'Go'
    expect(page).to have_content('Harry Kim vs. Riker')
  end
end
