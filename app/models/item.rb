class Item < ActiveRecord::Base
  has_many :order_items
  has_many :category_item
  has_many :categories, through: :category_item
end
