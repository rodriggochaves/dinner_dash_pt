class ApplicationController < ActionController::Base
  include SessionsHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_order
    session[:order] ||= Hash.new(0)
    session[:order].default = 0
    return session[:order]
  end
end
