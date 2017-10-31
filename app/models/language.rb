class Language < ApplicationRecord
  has_many :chapters
  has_many :users

  def count_users
    self.user
  end

  def progress(current_user)
    chapter_ids = self.chapters.pluck(:id)
    steps = Step.where(chapter_id: chapter_ids)
    compelete_step = current_user.user_steps.where(step_id: steps.pluck(:id)).count
    ((compelete_step.to_f/steps.count)*100).to_i
  end

end
