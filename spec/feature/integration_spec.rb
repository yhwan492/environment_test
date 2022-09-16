# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    # select 'Published Date', with: '2022-01-01'
    select('2022-01-01', from: 'Published date')
    fill_in 'Price', with: 1.0
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end