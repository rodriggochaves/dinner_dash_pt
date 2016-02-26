class OrdersController < ApplicationController
  def add
    hash = current_order()
    hash[params[:item_id].to_sym] += 1
    redirect_to items_index_path
  end
end
