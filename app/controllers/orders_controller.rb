class OrdersController < ApplicationController
  def add
    current_order()[params[:item_id].to_sym] += 1
    flash[:success] = "Item added to cart"
    redirect_to items_index_path
  end
end
