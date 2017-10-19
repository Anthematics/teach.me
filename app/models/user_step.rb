class UserStep < ApplicationRecord
  has_many :users
  has_many :steps

  # validates :step_id, uniqueness: true
end
