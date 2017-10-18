class Chapter < ApplicationRecord
  has_many :steps
  belongs_to :language
end
