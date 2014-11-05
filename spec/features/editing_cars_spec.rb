require 'rails_helper'

feature 'Editing Cars' do
  scenario 'can edit an existing car' do
    visit '/'
    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Rav4'
    fill_in 'Year', with: '2013'
    fill_in 'Price', with: '22000'

    click_button 'Create Car'

    click_link 'Edit'

    fill_in 'Price', with: '23000'

    click_button 'Update Car'

    expect(page).to have_content('2013 Toyota Rav4 has been edited')

    expect(page).to have_content('Toyota')
    expect(page).to have_content('Rav4')
    expect(page).to have_content('2013')
    expect(page).to have_content('23000')

  end
end
