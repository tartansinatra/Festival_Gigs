class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :title
      t.text :description
      t.text :image
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
