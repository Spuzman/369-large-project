Given(/^artist "(.*?)" exists with movement_id "(.*?)" and born "(.*?)" and died "(.*?)"$/) do |artist_name, movement_id, born, died|
  Artist.create! name: artist_name, movement_id: movement_id, born: born, died: died
end

Then(/^a new artist with name "(.*?)" should exist$/) do |artist_name|
  artist = Artist.where(name: artist_name).first
  artist.should_not be_nil
end
