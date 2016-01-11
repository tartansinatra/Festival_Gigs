class RemoveDateFromGigs < ActiveRecord::Migration
  def change
    remove_column :gigs, :date, :date
  end
end
