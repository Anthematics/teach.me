class Language < ApplicationRecord
  has_many :chapters
  has_many :users
end
