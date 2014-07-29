require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do 
   @input_attributes = { 
     name:       "sam",
     email:      "sam@example.com"}
   @user = users(:one)
  end
  test "should get new" do
    get :new
    assert_response :success
  end
 
 
  test "should create user" do 
    assert_difference('User.count') do 
      post :create, user: @input_attributes
    end 
    assert_redirected_to users_url
  end
end
