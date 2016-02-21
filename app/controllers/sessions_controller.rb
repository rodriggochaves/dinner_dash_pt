class SessionsController < ApplicationController
  def my_cart 
    @my_cart = session[:my_cart]
  end
end
