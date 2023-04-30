# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_carts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Cart < ApplicationRecord
    belongs_to(
      :user,
      class_name:  'User',
      foreign_key: 'user_id',
      inverse_of:  :cart
    )
    has_many(
      :cart_items,
      class_name:  'CartItem',
      foreign_key: 'cart_id',
      inverse_of:  :cart,
      dependent:   :destroy
  )
    has_many :items, through: :cart_items
end
