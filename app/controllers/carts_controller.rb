class CartsController < ApplicationController
  def show
    @my_cart = session[:my_cart]
  end
end
