class UserStep < ApplicationRecord
  has_many :users
  has_many :steps
end
