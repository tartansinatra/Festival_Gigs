class Gig < ActiveRecord::Base
  belongs_to :artist
  belong_to :venue
end
