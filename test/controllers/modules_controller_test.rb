require 'test_helper'

class ModulesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get modules_new_url
    assert_response :success
  end

  test "should get create" do
    get modules_create_url
    assert_response :success
  end

  test "should get update" do
    get modules_update_url
    assert_response :success
  end

  test "should get edit" do
    get modules_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get modules_destroy_url
    assert_response :success
  end

  test "should get index" do
    get modules_index_url
    assert_response :success
  end

  test "should get show" do
    get modules_show_url
    assert_response :success
  end

end
