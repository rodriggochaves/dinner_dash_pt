class RemoveColumnFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :order_id
  end
end
