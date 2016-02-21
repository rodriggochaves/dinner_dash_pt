class ApplicationController < ActionController::Base
  before_filter :persist_session_cart
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def persist_session_cart
    #Dummy hash representing cart
    session[:my_cart] ||= Hash.new(0)
  end
end
