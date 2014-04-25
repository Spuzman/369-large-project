Then(/^I should see "(.*?)"$/) do |desired_content|
  page.should have_content(desired_content)
end

Then(/^I should see image "(.*?)"$/) do |image|
  page.should have_xpath("//img[@src=\"#{image}\"]")
end
