Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I follow "(.*?)"$/) do |link_text|
  click_link link_text
end

Then(/^I am on the new book form$/) do
  current_path.should == new_book_path
end

When(/^I am on the show page for that book$/) do
  book = Book.last
  book.should_not be_nil
  visit book_path(book)
end

When(/^I am on the books index page$/) do
  visit books_path
end
