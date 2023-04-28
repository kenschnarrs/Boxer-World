class AddColumnsToTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true

      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.integer :card_num
      t.integer :cvc
      t.integer :exp_month
      t.integer :exp_year

      t.timestamps
    end
   
  end
end
