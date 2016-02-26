class AddUserToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :user
  end
end
