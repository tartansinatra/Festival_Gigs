class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :gigs do |t|
      t.change :time, :time
    end
  end
  def self.down
    change_table :gigs do |t|
      t.change :time, :decimal
    end
  end
end