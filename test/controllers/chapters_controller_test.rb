require 'test_helper'

class ChaptersControllerTest < ActionDispatch::IntegrationTest
	test "chapter show page" do
		 ruby = Language.create({name: "ruby" , description: "Ruby is a language"})
		 get '/languages/ruby/chapters/1/'
		 assert_response :success
		 ruby.destroy
	end

	test "chapter index page" do
		ruby2 = Language.create({name: "ruby" , description: "ruby is a language"})
		get '/languages/ruby/chapters'
		assert_response :success
		ruby2.destroy
	end
end
