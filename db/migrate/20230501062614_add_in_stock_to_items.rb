class AddInStockToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :in_stock, :boolean, default: true
  end
end
