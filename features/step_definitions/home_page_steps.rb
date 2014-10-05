Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

When(/^I sign in$/) do
  fill_in 'name', with: 'Fadie'
  click_button 'Sign In'
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_content 'Fadie vs. Computer'
end

When(/^I have entered my name$/) do
  fill_in 'name', with: 'Fadie'
  click_button 'Sign In'
end

Then(/^should have the choice between Rock, Paper, Scissor$/) do
	expect(page).to have_content 'Rock Paper Scissor'
end

