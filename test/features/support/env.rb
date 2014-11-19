# before all
require 'bundler/setup'
require 'page-object'
require 'page-object/page_factory'
require 'watir-webdriver'
require 'yaml'

World(PageObject::PageFactory)

app = YAML.load_file('config/application.yml')
profile = Selenium::WebDriver::Chrome::Profile.new
profile['extensions.ui.developer_mode'] = true

def local_browser
  if @app['BROWSER_LABEL']
    browser_label = @app['BROWSER_LABEL'].to_sym
  else
    browser_label = :firefox
    @app['BROWSER_LABEL'] = 'firefox'
  end
  Watir::Browser.new browser_label, :switches => %w[--load-extension=/Users/karlosmid/Library/Application\ Support/Google/Chrome/Default/Extensions/pdcedafpnkbnnconlacodncnniaocijo/0.1_0]

end

Before do |scenario|
  @app = app
  @browser = local_browser
end

After do |scenario|
  @browser.close
  Cucumber.wants_to_quit = true if scenario.failed?
end
