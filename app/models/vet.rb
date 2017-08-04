class Vet < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reviews
  has_many :reservations
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  validates :address, presence: false
  validates :telephone, presence: false
  validates :description, presence: false
  
  
  def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end

end
