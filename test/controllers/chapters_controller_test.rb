require 'test_helper'

class ChaptersControllerTest < ActionDispatch::IntegrationTest
	test "chapter show page" do
	 get '/languages/ruby/chapters/1/'
	 assert_response :success
	end
end
