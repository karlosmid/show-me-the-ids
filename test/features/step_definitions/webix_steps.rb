Given /^I am on Webix page$/ do
  base_url = @app['SITE']
  visit(WebixPage, using_params: {base_url: base_url})
  end
Then /^Webix page has expected title$/ do
  on(WebixPage).has_expected_title.should == true
end
Given /^I wait for (\d+) seconds$/ do |time|
  sleep(time.to_i)
end
When /^I click on trip type return$/ do
  on(WebixPage).click_trip_type_return
end
When /^I click on departure$/ do
  on(WebixPage).click_departure
end
When /^I click on talin$/ do
  on(WebixPage).click_talin
end
When /^I click on destination$/ do
  on(WebixPage).click_destination
end
When /^I click on riga$/ do
  on(WebixPage).click_riga
end
When /^I click on departure date$/ do
  on(WebixPage).click_departure_date
end
When /^I click on date pick$/ do
  on(WebixPage).click_date_picked
end
When /^I click on flexible dates$/ do
  on(WebixPage).click_flexible_dates
end
When /^I click on adults plus$/ do
  on(WebixPage).click_adults_plus
end
When /^I click on children plus$/ do
  on(WebixPage).click_children_plus
end
When /^I click on book$/ do
  on(WebixPage).click_book
end
Given /^I set Webix page load timeout$/ do
  on(WebixPage).set_load_timeout @app['PAGE_TIMEOUT'].to_i
end
