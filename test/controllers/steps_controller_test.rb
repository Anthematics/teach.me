require 'test_helper'

class StepsControllerTest < ActionDispatch::IntegrationTest


test "should get show" do
		get '/languages/ruby/chapters/1/steps/1'
		assert_response :success
	end

	test "should get new" do
		skip
		get steps_new_url
		assert_response :success
	end

	test "should get create" do
		skip
		get steps_create_url
		assert_response :success
	end

	test "should get edit" do
		skip
		get steps_edit_url
		assert_response :success
	end

end
