require 'test_helper'

class InstructorControllerTest < ActionDispatch::IntegrationTest
  test "should get editLanguages" do
    get instructor_editLanguages_url
    assert_response :success
  end

  test "should get editChapters" do
    get instructor_editChapters_url
    assert_response :success
  end

  test "should get editSteps" do
    get instructor_editSteps_url
    assert_response :success
  end

  test "should get editCodeTest" do
    get instructor_editCodeTest_url
    assert_response :success
  end

end
