class Language < ApplicationRecord
  has_many :chapters
  has_many :users

  def count_users
    self.user
  end
end
