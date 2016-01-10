class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.date :date
      t.decimal :time
      t.integer :capacity
      t.integer :artist_id
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end
