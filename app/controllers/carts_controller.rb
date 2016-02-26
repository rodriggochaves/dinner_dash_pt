class CartsController < ApplicationController
  def show
    @my_cart = get_items_from_order current_order()
  end

  private

  def get_items_from_order(current_order)
    items = []
    current_order.each do |k,v|
      items << Item.find(k.to_i)
    end
    items
  end
end
