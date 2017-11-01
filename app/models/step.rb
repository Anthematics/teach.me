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
  #
  # #
  # #   if @next_step.present?
  # #     return @next_step
  # #   else
  # # # #     @next_chapter = Chapter.find_by(chapter_id: self.chapter_id + 1, language_id: self.chapter.language_id)
  # # # #     puts @next_chapter
  # # # #       if @next_chapter.present?
  # # # #          @new_step = @next_chapter.steps.first
  # # # #          return @new_step
  # # #     else
  # #         return nil
  # #     end
  # # #   end
  end

end
