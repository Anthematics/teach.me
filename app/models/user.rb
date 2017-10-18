class User < ApplicationRecord
  has_secure_password

  has_many :languages
  has_many :user_steps

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
