require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'
     click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang has been created')

    expect(page).to have_content('Ford')
    expect(page).to have_content('Mustang')
    expect(page).to have_content('1967')
    expect(page).to have_content('2300')
  end

  scenario 'can create a second car' do
    visit '/'
    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Rav4'
    fill_in 'Year', with: '2013'
    fill_in 'Price', with: '22000'

    click_button 'Create Car'

    expect(page).to have_content('2013 Toyota Rav4 has been created')

    expect(page).to have_content('Toyota')
    expect(page).to have_content('Rav4')
    expect(page).to have_content('2013')
    expect(page).to have_content('22000')
  end
end
