require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    @student = students(:one)
    get :show, id: @student.id
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    @student = students(:one)
    get :edit, id: @student.id
    assert_response :success
  end

  test "should get create" do
    assert_difference "Student.count", +1 do
      post :create, teacher: {user_id: 1}
    end
    assert_response :success
  end
  focus
  test "should create user with student" do
    assert_difference "Student.count", +1 do
      post :create, student: {
        user_id: 1,
        teacher_id: 2,
        user_attributes: {
          name: "Mike",
          login: "mwest23",
          password: "pass",
          password_confirmation: "pass" }
        }
    end
    assert_equal "Mike", assigns(:student).user.name
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
