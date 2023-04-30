class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string, null: false, default: "Mike"
    add_column :users, :last_name, :string, null: false, default: "Tyson"
    add_column :users, :street_address, :string, null: false, default: "Champ St"
    add_column :users, :city, :string, null: false, default: "Champ city"
    add_column :users, :state, :string, null: false, default: "Champ State"
    add_column :users, :zip_code, :integer, null: false, default: 12345
    add_column :users, :country, :string, null: false, default: "Champ Country"
    add_column :users, :apt_num, :integer, null: false, default: 100

  end
end
