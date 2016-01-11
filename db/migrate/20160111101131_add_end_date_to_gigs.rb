class AddEndDateToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :end_date, :datetime
  end
end
