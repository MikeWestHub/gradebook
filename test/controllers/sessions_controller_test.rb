require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    @user = users(:mike)
    @session = session[:user_id]
    @session = @user.id
    get :create
    assert_response :redirect
  end

  test "should get destroy" do
    delete :destroy
    assert_response :redirect
  end

end
