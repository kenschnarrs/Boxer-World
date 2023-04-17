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
require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
