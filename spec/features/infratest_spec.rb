describe "infrastructure testing", :type => :feature do

  it "test for a string" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end


end
