class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :gig

  validates :no_of_tickets, numericality: true
  validates :no_of_tickets, numericality: {only_integer: true}
  
end
