class RemoveTimeFromGigs < ActiveRecord::Migration
  def change
    remove_column :gigs, :time, :decimal
  end
end
