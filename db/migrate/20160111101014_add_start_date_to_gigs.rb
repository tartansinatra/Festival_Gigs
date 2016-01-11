class AddStartDateToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :start_date, :datetime
  end
end
