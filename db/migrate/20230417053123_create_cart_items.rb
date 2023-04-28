class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.belongs_to :item, null: false, foreign_key: true
      t.integer :quantity, null: false, default: 1

      t.timestamps
    end
  end
end
