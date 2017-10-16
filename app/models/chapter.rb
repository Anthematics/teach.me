class Chapter < ApplicationRecord
  has_many :steps
  has_many :users
end
