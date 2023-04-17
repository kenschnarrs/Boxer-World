# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint           not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cart_id    :bigint           not null
#  item_id    :bigint           not null
#
# Indexes
#
#  index_cart_items_on_cart_id  (cart_id)
#  index_cart_items_on_item_id  (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (cart_id => carts.id)
#  fk_rails_...  (item_id => items.id)
#
class CartItem < ApplicationRecord
  belongs_to(
    :cart,
    class_name:  'Cart',
    foreign_key: 'cart_id',
    inverse_of:  :cart_items
  )

  belongs_to(
    :item,
    class_name:  'Item',
    foreign_key: 'item_id',
    inverse_of:  :cart_items
  )

  validates :item, presence: true
  validates :cart, presence: true

end
