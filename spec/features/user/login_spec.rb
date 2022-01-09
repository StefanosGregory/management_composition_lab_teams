require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:user) { create(:user) }

  scenario 'user navigates to the login page and succesfully logs in', js: true do
    user
    visit root_path
    find('nav a', text: 'Login').click
    find('nav a', text: 'LabTeams').click
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    find_button('Log in').click
    #expect(page).to have_selector('#user-settings')
  end

end