class AddWishlistFkColToWishlistItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :wishlist_items, :wishlist, foreign_key: true
  end
end
