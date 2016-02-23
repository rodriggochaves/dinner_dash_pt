require 'test_helper'          
                               
class SessionsHelperTest < ActionView::TestCase

  def setup                    
    @user = users(:rachel)    
    log_in @user
  end                          

  test "current_user returns right user when session is nil" do
    assert_equal @user, current_user
    assert is_logged_in?       
  end

end

