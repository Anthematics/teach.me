require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_creation_of_chapter
    #code
    chapter = Chapter.new(
      name: "some chapter",
      description: "some description",
    )
    chapter.save
    assert chapter.persisted?

  end
end
