require 'test_helper'

class SessionCartTest < ActionDispatch::IntegrationTest

  test "session has a cart" do
    get root_path
    assert session_cart_exists
  end
end
