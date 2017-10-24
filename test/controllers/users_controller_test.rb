require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
	test "should get new user "  do
		get '/user/new'
		assert_response :success
	end

	test "should create user" do
		skip #UNTIL WE CAN CORRENTLY PASS INFORMATION FROM THE TEST TO THE CONTROLLER
		post '/user'
		assert_response :success

		post "/user",
			params: { user: { name: "jasonTEST", password: "blockyblock" , password_confirmation: "blockyblock", email: 'jasonblockyblock@blockyblock.com'} }
		assert_response :redirect
		follow_redirect!
		assert_response :success
		jason = User.find_by email: "jasonblockyblock@blockyblock.com"
		assert jason.email == "jasonblockyblock@blockyblock.com"
	end
end
