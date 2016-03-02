class Category < ActiveRecord::Base
  has_many :category_item
  has_many :categories, through: :category_item
end
