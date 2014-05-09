Given(/^work "(.*?)" exists with artist name "(.*?)" and year completed "(.*?)" and materials "(.*?)" and image "(.*?)"$/) do |work_name, artist_name, year_completed, materials, image|
  artist_id = Artist.where(name: artist_name).first.id
  Work.create! name: work_name, artist_id: artist_id, year_completed: year_completed, materials: materials, image_url: image
end

Then(/^a new work with name "(.*?)" should exist belonging to artist with name "(.*?)"$/) do |work_name, artist_name|
  artist = Artist.where(name: artist_name).first
  work = Work.where(name: work_name).first
  work.should_not be_nil
  work.artist_id.should == artist.id
end
