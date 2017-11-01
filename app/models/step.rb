class Step < ApplicationRecord
  belongs_to :chapter
  has_many :code_tests
  has_many :user_steps


  def next
    next_step = self.chapter.steps.where(id: self.id + 1)

    if next_step.present?
      next_step.first
    else
      nil
    end

  end

end
