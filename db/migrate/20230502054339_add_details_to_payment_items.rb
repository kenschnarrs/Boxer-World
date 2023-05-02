class AddDetailsToPaymentItems < ActiveRecord::Migration[7.0]
  def change
    add_column :payment_items, :price, :integer
  end
end
