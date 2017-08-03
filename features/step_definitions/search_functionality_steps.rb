Given(/^that i am on the landing page$/) do
  visit root_path
end

Given(/^there is a field "([^"]*)"$/) do |q|
  find_field('search_field').value
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end
