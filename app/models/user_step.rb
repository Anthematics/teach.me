class UserStep < ApplicationRecord
  has_many :users
  has_many :steps
  validates_uniqueness_of :step_id, scope: %i[user_id]

#  validates :step_id, uniqueness: true
end
