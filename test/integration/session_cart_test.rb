require 'test_helper'

class SessionCartTest < ActionDispatch::IntegrationTest
  test "my_cart link" do
    get my_cart_path
    assert_template 'carts/show'
  end
end
