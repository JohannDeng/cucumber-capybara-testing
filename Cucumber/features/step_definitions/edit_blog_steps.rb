# require 'cucumber-rails'
require 'capybara/cucumber'
require 'capybara'

Capybara.default_driver = :selenium # :selenium_chrome and :selenium_chrome_headless are also registered

When /I click on Edit button/ do
       click_link('Edit')
       fill_in('Title', with: 'Test002')
       fill_in('Text', with: 'This is my test002')
       click_button('Update Article')
end
 
Then /existing article should be updated/ do
	 page.has_content?('Article was successfully updated')
end