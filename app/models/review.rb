# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  rating      :integer
#  review_text :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  item_id     :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_reviews_on_item_id  (item_id)
#  index_reviews_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (user_id => users.id)
#
class Review < ApplicationRecord
    belongs_to(
        :item,
        class_name:  'Item',
        foreign_key: 'item_id',
        inverse_of:  :reviews
      )

      belongs_to(
        :user,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :reviews
      )

      validates :review_text, presence: true


      validates :rating, numericality: true
      validates :item, presence: true

    
end
