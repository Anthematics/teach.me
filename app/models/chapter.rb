class Chapter < ApplicationRecord
  has_many :steps
  has_many :users
  belongs_to :chapters
end
