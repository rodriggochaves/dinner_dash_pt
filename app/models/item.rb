class Item < ActiveRecord::Base
  has_many :order_items
  has_many :category_item
  has_many :categories, through: :category_item

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: { maximum: 255 }
  validates :price, presence: true
  validates :active, inclusion: [true, false]
end
