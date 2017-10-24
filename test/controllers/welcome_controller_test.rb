require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

	test "should get index" do
		get '/'
		assert_response :success
		assert_select "footer" , "TeachME copyright(c) 2017 Copyright Holder All Rights Reserved"
	end


end
