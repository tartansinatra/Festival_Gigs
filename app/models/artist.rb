class Artist < ActiveRecord::Base
  has_many :gigs

  validates :title, presence: true
  validates :title, length: { minimum: 4} 

  def self.search(search)
      # where(:title, query) -> This would return an exact match of the query
      where("title like ?", "%#{search}%") 
      where("description like ?", "%#{search}%")
  end


end
