class AddItemFkColtoReviews < ActiveRecord::Migration[7.0]
  def change
      add_reference :reviews, :item, foreign_key: true
    end
end
