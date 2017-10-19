require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
	test "should get new" do
		skip
		get sessions_new_url
		assert_response :success
	end

	test "should get create" do
		get 'http://localhost:3000/menu'
		assert_response :success
	end

	test "should get destroy" do
	skip
		get 'http://localhost:3000/'
		assert_response :success
	end

end
