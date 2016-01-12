class Venue < ActiveRecord::Base
  
  has_many :gigs

  validates :name, presence: true
  validates :name, length: { minimum: 4} 

end
