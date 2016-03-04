require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def setup
    @item = Item.new(name: "My Item",
                   description: "My description",
                   price: 123.45,
                   active: true)
  end
  
  test "item should be valid" do
    assert @item.valid?
  end
  
  test "item name should not be blank" do
    @item.name = "    "
    assert_not @item.valid?
  end

  test "item description should not be blank" do
    @item.description = "    "
    assert_not @item.valid?
  end

  test "item price should not be blank" do
    @item.price = "    "
    assert_not @item.valid?
  end
end
