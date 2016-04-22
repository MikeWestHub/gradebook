require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    @teacher = teachers(:one)
    get :show, id: @teacher.id
    assert_response :success
  end

  test "should get create" do
    assert_difference "Teacher.count", +1 do
        post :create, teacher: { user_id: 1 }
    end
    assert_response :success
  end
  focus
  test "should create user with teacher" do
    assert_difference "User.count", +1 do
      post :create, teacher: {
        user_id: 1,
        user_attributes: {
          name: "Mike",
          login: "mwest23",
          password: "pass",
          password_confirmation: "pass" }
        }
    end
    assert_equal "Mike", assigns(:teacher).user.name 
  end

  test "should get destroy" do
    @teacher = teachers(:one)
    teacher_count = Teacher.count
    get :destroy, id: @teacher.id
    assert teacher_count - 1, Teacher.count
    assert_redirected_to sessions_new_path
  end

end
