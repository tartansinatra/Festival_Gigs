class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :add_1
      t.text :add_2
      t.text :town
      t.text :postcode
      t.text :image

      t.timestamps null: false
    end
  end
end
