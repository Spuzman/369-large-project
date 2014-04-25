Given(/^I am on the home page$/) do
  visit root_path
end

Given(/^I am on the work page$/) do
  visit works_path
end

Given(/^I am on the artist page$/) do
  visit artists_path
end

Given(/^I am on the movement page$/) do
  visit movements_path
end

When(/^I follow "(.*?)"$/) do |link_text|
  click_link link_text
end

Then(/^I am on the movement index$/) do
  current_path.should == movements_path
end

Then(/^I am on the new movement form$/) do
  current_path.should == new_movement_path
end

Then(/^I am on the new artist form$/) do
  current_path.should == new_artist_path
end

Then(/^I am on the new work form$/) do
  current_path.should == new_work_path
end

When(/^I am on the show page for that movement$/) do
  movement = Movement.last
  movement.should_not be_nil
  visit movement_path(movement)
end

When(/^I am on the show page for that artist$/) do
  artist = Artist.last
  artist.should_not be_nil
  visit artist_path(artist)
end

When(/^I am on the show page for that work$/) do
  work = Work.last
  work.should_not be_nil
  visit work_path(work)
end

