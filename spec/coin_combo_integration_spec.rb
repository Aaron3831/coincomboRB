require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combo path', {:type => :feature}) do
  it('processes the user entry and returns the coin combo') do
    visit('/')
    fill_in('coin_combo', :with => '25')
    click_button('Send')
    expect(page).to have_content('quarter')
  end
end
