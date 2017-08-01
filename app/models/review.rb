class Review < ApplicationRecord
  belongs_to :vet
  belongs_to :user
end
