require 'test_helper'

class ChaptersControllerTest < ActionDispatch::IntegrationTest
	test "chapter show page" do
		 ruby = Language.create({name: "ruby" , description: "Ruby is a language"})
		 get '/languages/ruby/chapters/1/'
		 assert_response :success
		 ruby.destroy
	end
end

def teardown;
end
