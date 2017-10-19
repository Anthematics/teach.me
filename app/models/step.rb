class Step < ApplicationRecord
  belongs_to :chapter
  has_many :code_tests
end
