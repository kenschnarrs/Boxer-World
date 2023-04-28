class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string, null: false, default: ""
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :street_address, :string, null: false, default: ""
    add_column :users, :city, :string, null: false, default: ""
    add_column :users, :state, :string, null: false, default: ""
    add_column :users, :zip_code, :integer, null: false, default: 0
    add_column :users, :country, :string, null: false, default: ""
    add_column :users, :apt_num, :integer, null: false, default: 0

  end
end
