Given(/^movement "(.*?)" exists with description "(.*?)"$/) do |movement_name, description_text|
  Movement.create! name: movement_name, description: description_text
end

Then(/^a new movement with name "(.*?)" should exist$/) do |movement_name|
  movement = Movement.where(name: movement_name).first
  movement.should_not be_nil
end
