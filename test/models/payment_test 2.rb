# == Schema Information
#
# Table name: payments
#
#  id             :bigint           not null, primary key
#  apt_number     :string
#  card_num       :bigint
#  city           :string
#  country        :string
#  cvc            :integer
#  exp_month      :integer
#  exp_year       :integer
#  first_name     :string
#  last_name      :string
#  state          :string
#  street_address :string
#  zip_code       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_payments_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
