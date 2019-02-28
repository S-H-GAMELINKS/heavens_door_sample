require 'capybara/rails'
require 'capybara/minitest'

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
  # Make `assert_*` methods behave like Minitest assertions
  include Capybara::Minitest::Assertions

  # Reset sessions and driver between tests
  # Use super wherever this method is redefined in your individual test classes
  def heavens_door
    scenario 'GENERATED' do
        visit '/posts'
    
        click_link 'New Post'
    
        fill_in 'Title', with: 'test'
        fill_in 'Content', with: 'aaaaaaaaaaaaaaaaaaaaaaaaa'
        click_button 'Create Post'
    
        click_link 'Back'
    end    
  end
end