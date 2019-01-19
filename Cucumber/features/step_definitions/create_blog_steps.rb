# require "watir-webdriver"
# require "rspec/expectations"
# require 'cucumber-rails'
require 'capybara/cucumber'
# require 'capybara/rails'
require 'capybara'

Capybara.default_driver = :selenium # :selenium_chrome and :selenium_chrome_headless are also registered


Given /I am on Article homepage/ do

	  visit('http://localhost:3000//articles')

end
 
When /I click on New Article button/ do

       #Click on creation button, and input title and text of blog, then click on Save button
       click_link('New Article')
       fill_in('Title', with: 'Test001')
       fill_in('Text', with: 'This is my test001')
       click_button('Create Article')
end
 
Then /new article should be created/ do
	 #Verify blog has been created successfully
	 page.has_content?('Article was successfully created')

end
