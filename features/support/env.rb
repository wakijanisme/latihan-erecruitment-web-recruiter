require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'dotenv'
#require 'pry'
require 'report_builder'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Firefox::Options.new
  if ENV['HEADLESS'] == 'yes'
    options.add_argument('--headless')
  end
  if ENV['PRIVATE'] == 'yes'
    options.add_argument('-private')
  end
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: options,
    timeout: 30)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
end

def take_screenshot
  time = Time.now.strftime("%Y-%m-%d %H%M%S%L")
  screenshot_path = 'features/support/reports/screenshot/' + time + '.png'
  Capybara.current_session.driver.save_screenshot(screenshot_path)
  image = open(screenshot_path, 'rb', &:read)
  # encoded_image = Base64.encode64(image)
  attach(image, 'image/png', time)
end

def generate_report
  ReportBuilder.configure do |config|
    time = Time.now.strftime("%Y-%m-%d %H%M%S%L")
    config.input_path = 'features/support/reports/result-cucumber.json'
    config.report_path = 'features/support/reports/test_result_' + time
    config.report_types = [:html]
    config.report_title = "Test Result"
    config.includes_image = true
  end
  ReportBuilder.build_report
end
