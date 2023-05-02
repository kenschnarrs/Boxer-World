class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string, null: true, default: ""
    add_column :users, :last_name, :string, null: true, default: ""
    add_column :users, :street_address, :string, true: true, default: ""
    add_column :users, :city, :string, null: true, default: ""
    add_column :users, :state, :string, null: true, default: ""
    add_column :users, :zip_code, :integer, null: true, default: 99999
    add_column :users, :country, :string, null: true, default: ""
    add_column :users, :apt_num, :integer, null: true, default: 100
    
  end
end
