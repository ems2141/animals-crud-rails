require 'spec_helper'

feature 'animal counter' do
  scenario 'it lists animals on a page' do
    visit '/'
    click_on 'Add Animal'

    fill_in 'name', with: 'pig'
    click_on "Add"
    fill_in 'name', with: 'tiger'
    click_on "Add"

    expect(page).to have_content 'pig'
    expect(page).to have_content 'tiger'

    click_on 'pig'
    expect(page).to have_content 'This is a pig'

    click_on 'Edit Animal'
    fill_in 'name', with: 'spider'
    click_on 'Update'

    expect(page).to have_content 'This is a spider'
  end
end