class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :movement_id
      t.date :born
      t.date :died

      t.timestamps
    end
  end
end
