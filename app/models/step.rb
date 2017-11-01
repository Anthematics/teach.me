class Step < ApplicationRecord
  belongs_to :chapter
  has_many :code_tests
  has_many :user_steps


  def next
    next_step = self.chapter.steps.where(id: self.id + 1)

    if next_step.present?
      return next_step.first
    else
      @next_chapter = Chapter.where(id: self.chapter_id + 1, language_id: self.chapter.language_id)
      if @next_chapter.present?
        @new_step = @next_chapter.first.steps
          return @new_step.first
      else
        nil
      end
    end

  end

end
