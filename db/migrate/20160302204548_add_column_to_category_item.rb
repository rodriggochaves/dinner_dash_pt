class AddColumnToCategoryItem < ActiveRecord::Migration
  def change
    add_column :category_item, :item_id, :integer
    add_column :category_item, :category_id, :integer
  end
end
