require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    @user = users(:mike)
    get :create, id: @user.id
    assert_redirected_to user_path(id: @user.id)
  end

  test "should get destroy" do
    delete :destroy
    assert_response :redirect
  end

end
