require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    @mike = users(:mike)
    get :show, id: @mike.id
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    @mike = users(:mike)
    get :edit, id: @mike.id
    assert_response :success
  end

  test "should get create" do
    prev_user_count = User.count
    post :create, user: { login: "MalachyConstant", password: "pass" }
    assert assigns(:user).valid?
    assert_equal "MalachyConstant", assigns(:user).login
    assert_equal prev_user_count + 1, User.count
  end

  test "should get update" do
    @mike = users(:mike)
    patch :update, id: @mike.id, user: { name: "jimbo"}
    assert_redirected_to controller: "users", action: "show", id: @mike.id
    assert_response :redirect
    assert_equal "jimbo", assigns[:user].name
   end

  test "should get destroy" do
    @mike = users(:mike)
    user_count = User.count
    delete :destroy, id: @mike.id
    assert_redirected_to controller: "users", action: "new"
    assert_response :redirect
    assert_equal user_count - 1, User.count
  end

end
