class AddOrderToItem < ActiveRecord::Migration
  def change
    add_reference :items, :order
  end
end
