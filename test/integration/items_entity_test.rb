require 'test_helper'

class ItemsEntityTest < ActionDispatch::IntegrationTest

  test "invalid item submission" do
    get new_item_path
    assert_no_difference 'Item.count' do
      post items_path, item: {name: "foo",
                              description: "bar",
                              price: "",
                              active: "true",
                              categories: "Teste category"}
    end
  end
end
