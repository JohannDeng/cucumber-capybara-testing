# require 'cucumber-rails'
require 'capybara/cucumber'
require 'capybara'

Capybara.default_driver = :selenium # :selenium_chrome and :selenium_chrome_headless are also registered

When /I click on Destroy button/ do
         #Click on Destroy link, then click OK button in pop-up window
         click_link('Destroy')
         click_button('OK')

         # confirm_window = window_opened_by do
         #   click_link('Destroy')
         # end

         # within_window confirm_window do
         #   click_button('OK')
         # end
end
 
Then /existing article should be deleted/ do
	 #Verify blog has been deleted successfully
	 page.has_content?('Article was successfully destroyed')
end
