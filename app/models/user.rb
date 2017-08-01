class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :phone_number, presence: true, uniqueness: true, length: { is: 11 }  
  validates :address, presence: true
  validates :birth_date, presence: true
  has_many :vets
  
  
end
