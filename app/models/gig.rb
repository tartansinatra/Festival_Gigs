class Gig < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue
  has_many :bookings

  validates :start_date, presence: :true 
  validates :end_date, presence: :true
  validate :start_date_in_future
  validate :end_date_is_after_start_date 


  private

  def start_date_in_future
    if start_date.present? && start_date < Time.now
      errors.add(:start_date, "can't be in the past!")
    end
  end  

  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?
    if end_date < start_date
      errors.add(:end_date, "can't end a gig after it starts")
    end
  end
    

end
