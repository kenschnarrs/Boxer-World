class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.decimal :price, null: false, default: 0.0
      t.string :category, null: false, default: ""
      t.string :brand, null: false, default: ""
      t.string :size, null: false, default: ""
      t.string :image_path, null: false, default: ""
      t.integer :num_in_stock, null: false, default: 0
      t.boolean :isFeatured, null: false, default: false
      t.decimal :rating, null: false, default: 0.0
      t.string :name, null: false, default: ""

      t.timestamps
    end
  end
end
