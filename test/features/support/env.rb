# before all
require 'bundler/setup'
require 'page-object'
require 'page-object/page_factory'
require 'watir-webdriver'
require 'yaml'

World(PageObject::PageFactory)

app = YAML.load_file('config/application.yml')

def local_browser
  if @app['BROWSER_LABEL']
    browser_label = @app['BROWSER_LABEL'].to_sym
  else
    browser_label = :firefox
    @app['BROWSER_LABEL'] = 'firefox'
  end
  puts ["--load-extension=#{@app['EXTENSION_PATH']}#{@app['EXTENSION_VERSION']}"].to_s
  Watir::Browser.new browser_label, :switches => ["--load-extension=#{@app['EXTENSION_PATH']}#{@app['EXTENSION_VERSION']}"]

end

Before do |scenario|
  @app = app
  @browser = local_browser
end

After do |scenario|
  @browser.close
  Cucumber.wants_to_quit = true if scenario.failed?
end
