Given /^I perform HTTP authentication as "([^"]*)" "([^"]*)"$/ do |username, password|
  page.driver.browser.basic_authorize(username, password)
end
