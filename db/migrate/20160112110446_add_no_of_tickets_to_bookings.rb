class AddNoOfTicketsToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :no_of_tickets, :integer
  end
end
