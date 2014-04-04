Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I follow "(.*?)"$/) do |link_text|
  click_link link_text
end

Then(/^I am on the new movement form$/) do
  current_path.should == new_movement_path
end

When(/^I am on the show page for that movement$/) do
  movement = Movement.last
  movement.should_not be_nil
  visit movement_path(movement)
end

#When(/^I am on the books index page$/) do
#  visit books_path
#end
