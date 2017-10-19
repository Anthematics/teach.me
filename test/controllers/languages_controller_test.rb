require 'test_helper'

class LanguagesControllerTest < ActionDispatch::IntegrationTest
	test "should get show" do
		get 'http://localhost:3000/languages/1/'
		assert_response :success
	end

#show needs to be rewritten to reflect new routes.

	test "should get languages index " do
		get 'http://localhost:3000/languages'
		assert_response :success
	end

#index needs rewriting (routes)
end
