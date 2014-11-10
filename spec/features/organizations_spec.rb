require 'rails_helper'

feature 'Organizatinos' do

  scenario 'Adding validation to organizations without name' do
    visit root_path
    click_on "Organizations"
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content("Name can't be blank")
  end

end
