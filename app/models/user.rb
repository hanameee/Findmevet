class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
         
  validates :phone_number, presence: true, uniqueness: true, length: { is: 11 }  
  validates :address, presence: true
  validates :birth_date, presence: true
  
  has_many :vets, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :examinations, dependent: :destroy
  has_many :likes
  has_many :liked_vets, through: :likes, source: :vet
  
  def is_like?(vet)
    Like.find_by(user_id: self.id, vet_id: vet.id).present?
  end
  
  
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name
    end
  end  
  
end
