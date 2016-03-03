require 'test_helper'

class CategoryItemTest < ActiveSupport::TestCase
  test "m2m relationship works" do
    item1 = Item.create(name: "item1", description: "foobar")
    assert item1
    categ1 = Category.create(name: "categ1")
    assert categ1
    item1.category_item.create(category: categ1)
    # Verify records at join table
    jt = CategoryItem.find_by(item_id: item1.id)
    assert jt.item_id = item1.id
    assert jt.category_id = categ1.id
    # Verify relationship
    assert categ1.id, item1.categories.first.id
    assert item1.id, categ1.items.first.id
  end
end
