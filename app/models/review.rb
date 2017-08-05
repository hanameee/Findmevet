class Review < ApplicationRecord
   paginates_per 5
  
  belongs_to :vet
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate  :picture_size
  
  # after_create :update_vet_rating

  # def update_vet_rating
  #   vet.update_average
  # end

  private
    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
