class RemoveAddressAndNameFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :address, :string
    remove_column :users, :name, :string
  end
end
