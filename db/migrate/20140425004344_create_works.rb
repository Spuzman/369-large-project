class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.integer :artist_id
      t.integer :year_completed
      t.text :materials
      t.string :image_url

      t.timestamps
    end
  end
end
