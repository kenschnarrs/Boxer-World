class AddDetailsToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :first_name, :string, null: false, default: ""
    add_column :transactions, :last_name, :string, null: false, default: ""
    add_column :transactions, :street_address, :string, null: false, default: ""
    add_column :transactions, :city, :string, null: false, default: ""
    add_column :transactions, :state, :string, null: false, default: ""
    add_column :transactions, :zip_code, :integer, null: false, default: 0
    add_column :transactions, :country, :string, null: false, default: ""
    add_column :transactions, :apt_num, :integer, null: false, default: 0
    remove_column :transactions, :name, :string
    remove_column :transactions, :address, :string
  end
end
