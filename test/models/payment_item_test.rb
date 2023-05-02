# == Schema Information
#
# Table name: payment_items
#
#  id         :bigint           not null, primary key
#  price      :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :bigint           not null
#  payment_id :bigint           not null
#
# Indexes
#
#  index_payment_items_on_item_id     (item_id)
#  index_payment_items_on_payment_id  (payment_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (payment_id => payments.id)
#
require "test_helper"

class PaymentItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
