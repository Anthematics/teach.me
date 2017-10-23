require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
	 test "menu index" do
		 get '/menu'
		 assert_response :success
	 end

	 test "menu show" do
		 get '/menu/1'
			assert_response :success
		 #You can also pass an explicit status code number as the type, like assert_response(501) -> Jason's note -> tried this still not passing the test.
	 end
end
