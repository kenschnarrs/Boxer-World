# == Schema Information
#
# Table name: items
#
#  id           :bigint           not null, primary key
#  brand        :string           default(""), not null
#  category     :string           default(""), not null
#  description  :string           default(""), not null
#  isFeatured   :boolean          default(FALSE), not null
#  name         :string           default(""), not null
#  num_in_stock :integer          default(0), not null
#  price        :decimal(, )      default(0.0), not null
#  rating       :decimal(, )      default(0.0), not null
#  size         :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  wishlist_id  :bigint
#
# Indexes
#
#  index_items_on_wishlist_id  (wishlist_id)
#
# Foreign Keys
#
#  fk_rails_...  (wishlist_id => wishlists.id)
#
class Item < ApplicationRecord

    has_many(
        :reviews,
        class_name:  'Review',
        foreign_key: 'item_id',
        inverse_of:  :item,
        dependent:   :destroy
      )

    has_many(
      :cart_items,
      class_name:  'CartItem',
      foreign_key: 'item_id',
      inverse_of:  :item,
      dependent:   :destroy
    )

    has_many(
      :payment_items,
      class_name:  'PaymentItem',
      foreign_key: 'item_id',
      inverse_of:  :item,
      dependent:   :destroy
    )

    #   validates :reviews, presence: true


    has_one_attached :picture


    def self.search(name)
        where("name LIKE ?", "%#{name}%")
    end




end
