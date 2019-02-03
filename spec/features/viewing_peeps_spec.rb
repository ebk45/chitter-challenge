feature 'Viewing Peeps:' do
  scenario '- should show the chitter feed' do
    visit '/chitter'
    fill_in 'message', with: 'This is a test peep!'
    fill_in 'name', with: 'Jane'
    click_button 'Peep!'
    expect(page).to have_content 'This is a test peep!'
  end
end
