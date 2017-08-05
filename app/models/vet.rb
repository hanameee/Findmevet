class Vet < ApplicationRecord
  paginates_per 5
  
  mount_uploader :picture, PictureUploader
  belongs_to :user
  has_many :photos
  has_many :reviews
  has_many :reservations
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  validates :address, presence: false
  validates :telephone, presence: false
  validates :description, presence: false
  validate  :picture_size

  
  
  def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end

  # def update_average
  #   @value = 0
  #   self.reviews.star.each do |star|
  #     @value = @value + star.value
  #   end
  #   @total = self.reviews.star.size


  #   update_attributes(average: @value.to_f / @total.to_f)
  # end

  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
    
end
