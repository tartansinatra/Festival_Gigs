class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :gig

  validates :no_of_tickets, numericality: true
  validates :no_of_tickets, numericality: {only_integer: true}
  
  # Check if a New Booking being created has sufficient capacity left.  
  
  def self.total_tickets_sold(gig_id)
    gig = Gig.find(gig_id)

    total_tickets_sold = gig.bookings.inject(0) do |sum,x| 
      sum + x.no_of_tickets
    end

    total_tickets_sold
  end



end
