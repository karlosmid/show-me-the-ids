Then /^work is visible$/ do
  on(SidebarPage).is_work_visible.should == true
end
Then /^customers are visible$/ do
  on(SidebarPage).are_customers_visible.should == true
end
When /^I click on Work menu item$/ do
  on(SidebarPage).click_work
end
When /^I click on Customers menu item$/ do
  on(SidebarPage).click_customers
end
Given /^I set Sidebar page load timeout$/ do
  on(SidebarPage).set_load_timeout ENV['PAGE_TIMEOUT'].to_i
end
When /^I click menu toggler$/ do
  on(SidebarPage).click_menu_toggler
end
