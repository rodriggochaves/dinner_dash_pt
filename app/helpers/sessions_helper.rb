module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user?
    user == current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def logged_in?
    !current_user.nil?
  end

  def current_order
    session[:order] ||= Hash.new(0)
    session[:order].default = 0
    return session[:order]
  end
end
