When(/^I select "(.*?)" for "(.*?)"$/) do |option_text, select_label|
  select option_text, from: select_label
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field_label, content|
  fill_in field_label, with: content
end

When(/^I press "(.*?)"$/) do |button_text|
  click_button button_text
end
