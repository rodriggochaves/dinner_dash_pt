require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get my_cart" do
    get :my_cart
    assert_response :success
  end

end
