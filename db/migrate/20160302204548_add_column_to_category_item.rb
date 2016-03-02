class AddColumnToCategoryItem < ActiveRecord::Migration
  def change
    add_column :category_items, :item_id, :integer
    add_column :category_items, :category_id, :integer
  end
end
