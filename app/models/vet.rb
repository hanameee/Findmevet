class Vet < ApplicationRecord
  belongs_to :user
  has_many :photos
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  validates :address, presence: true
  validates :telephone, presence: true
  validates :description, presence: true

end
