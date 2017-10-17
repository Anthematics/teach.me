class User < ApplicationRecord
  has_secure_password

  has_many :steps
  has_many :chapters

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
