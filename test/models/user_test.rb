require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_creation_of_user
    user = User.new(
      name: "name",
      password: "password",
      password_confirmation: "password",
      email: "email@email.com"
    )
    user.save
    assert user.persisted?
  end

end
