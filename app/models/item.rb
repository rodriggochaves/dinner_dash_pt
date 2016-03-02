class Item < ActiveRecord::Base
  has_many :order_items
  belongs_to :order
  has_many :category_item
  has_many :categories, through: :category_item
end
