class Venue < ActiveRecord::Base
  
  has_many :gigs

  validates :title, presence: true
  validates :title, length: { minimum: 4} 

end
