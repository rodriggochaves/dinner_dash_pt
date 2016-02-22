require 'test_helper'

class SessionCartTest < ActionDispatch::IntegrationTest

  test "session has a cart" do
    get root_path
    assert session_cart_exists
  end

  test "my_cart link" do
    get my_cart_path
    assert_template 'carts/show'
  end
end
