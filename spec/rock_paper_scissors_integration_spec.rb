require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the winner path', {:type => :feature}) do
  it('processes the user entry and returns whether it won or not') do
    visit('/')
    fill_in('choice', :with => 'rock')
    click_button('Shoot')
    expect(page).to have_content('You')
  end
end
