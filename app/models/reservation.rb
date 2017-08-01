class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :vet
end
