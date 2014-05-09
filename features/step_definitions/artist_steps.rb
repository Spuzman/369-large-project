Given(/^artist "(.*?)" exists with movement name "(.*?)" and born "(.*?)" and died "(.*?)"$/) do |artist_name, movement_name, born, died|
  movement_id = Movement.where(name: movement_name).first.id
  Artist.create! name: artist_name, movement_id: movement_id, born: born, died: died
end

Then(/^a new artist with name "(.*?)" should exist belonging to movement with name "(.*?)"$/) do |artist_name, movement_name|
  artist = Artist.where(name: artist_name).first
  movement = Movement.where(name: movement_name).first
  artist.should_not be_nil
  artist.movement_id.should == movement.id
end
