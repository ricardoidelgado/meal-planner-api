require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { first_name: "Test", last_name: "Test Last", email: "test@test.com", profile_picture: "image.jpeg", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end
end
