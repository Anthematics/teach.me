require 'test_helper'

class StepsControllerTest < ActionDispatch::IntegrationTest


test "should get show" do
		get '/languages/ruby/chapters/1/steps/1'
		assert_response :redirect
		follow_redirect!
		assert_select "footer" , "TeachME copyright(c) 2017 Copyright Holder All Rights Reserved"
	end

	test "should get new" do
		skip #WRITE IN ONCE ADMINS CAN CREATE NEW STEPS
		get steps_new_url
		assert_response :success
	end

	test "should get create" do
		skip #WRITE IN ONCE ADMINS CAN CREATE NEW STEPS
		get steps_create_url
		assert_response :success
	end

	test "should get edit" do
		skip #WRITE IN ONCE ADMINS CAN EDIT NEW STEPS
		get steps_edit_url
		assert_response :success
	end

	test "Code submission" do
		skip
		get '/user/:id/step/:step_id/submitcode'
		assert_response :success #probably will have to assert an input # instead here
	end

end
