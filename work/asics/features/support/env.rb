require "rspec"
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome #incognito_chrome (antes)
  config.default_max_wait_time = 10
end

#Capybara.register_driver :incognito_chrome do |app| #para abrir em modo anonimo
#browser_options = ::Selenium::WebDriver::Chrome::Options.new
#browser_options.args << "--incognito"
#Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
#end
