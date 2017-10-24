require 'test_helper'
require 'pry'

class UsersControllerTest < ActionDispatch::IntegrationTest
	test "should get new user "  do
		get '/user/new'
		assert_response :success
	end

	test "should create user in signup" do
		post "/user", params: { user: {email: 'jasonblockyblock@blockyblock.com', password: "blockyblock" , password_confirmation: "blockyblock", } }
		assert_response :redirect
		follow_redirect!
		assert_response :success
		jason = User.find_by email: "jasonblockyblock@blockyblock.com"
		assert jason.email == "jasonblockyblock@blockyblock.com"
	end
end
