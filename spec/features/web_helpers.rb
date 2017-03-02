def sign_in_and_play
  visit '/'
  within "#name_entry" do
    fill_in 'name_1', with: 'Harry Kim'
    fill_in 'name_2', with: 'Riker'
  end
  click_button 'Go'
end
