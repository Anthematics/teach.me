require 'test_helper'

class LanguagesControllerTest < ActionDispatch::IntegrationTest
	test "should get show" do
		get '/languages/1/'
		assert_response :redirect
	end

#show needs to be rewritten to reflect new routes.

	test "should get languages index " do
		get '/languages/'
		assert_response :redirect
	end

#index needs rewriting (routes)

	test "add a language" do
		skip
	end
end
