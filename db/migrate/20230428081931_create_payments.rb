class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :apt_number
      t.string :street_address
      t.string :city
      t.integer :zip_code
      t.string :state
      t.string :country
      t.bigint :card_num
      t.integer :cvc
      t.integer :exp_month
      t.integer :exp_year
      t.timestamps
    end
  end
end
