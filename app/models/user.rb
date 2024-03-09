class User < ApplicationRecord
  before_save :generate_access_token
    has_secure_password
    has_many :registrations
    has_many :tournaments, through: :registrations
    validates :username, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password, length: { minimum: 4 }, confirmation: true
    validates :password_confirmation, confirmation: true
  
    def generate_access_token
        payload = {
            user_id: self.id,
            email: self.email
          }
      self.access_token = JWT.encode(payload, ENV['SECRET_KEY'], 'HS256')
    end
  end
  