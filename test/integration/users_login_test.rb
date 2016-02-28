require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:rachel)
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test "login with valid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: { email: @user.email, password: 'password' }
    assert is_logged_in?
    assert_redirected_to @user 
    follow_redirect!
    assert_template 'users/show'
    #Test display name
    assert_select 'h1', text: @user.name
    @user.update_attribute(:display_name, 'Rach')
    get user_path
    assert_select 'h1', text: 'Rach'
  end
end
