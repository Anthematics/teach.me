require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_creation_of_step
    chapter = Chapter.new(
      name: "some chapter",
      description: "some description",
    )
    step = Step.new(
      name: "Create new variables",
      description: "Try create some new variables yourself",
      chapter: chapter
    )
    step.save
    assert step.persisted?
  end
end
