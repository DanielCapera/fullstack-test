require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { company_id: @user.company_id, email: @user.email, lastname: @user.lastname, name: @user.name, password_digest: @user.password_digest, phone: @user.phone, position: @user.position, salary: @user.salary } }, as: :json
    end

    assert_response :created
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { company_id: @user.company_id, email: @user.email, lastname: @user.lastname, name: @user.name, password_digest: @user.password_digest, phone: @user.phone, position: @user.position, salary: @user.salary } }, as: :json
    assert_response :success
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user), as: :json
    end

    assert_response :no_content
  end
end
