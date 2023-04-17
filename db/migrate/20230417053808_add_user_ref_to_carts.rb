class AddUserRefToCarts < ActiveRecord::Migration[7.0]
  def change
    add_index :carts, :user_id, unique: true
  end
end
