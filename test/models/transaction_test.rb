# == Schema Information
#
# Table name: transactions
#
#  id             :bigint           not null, primary key
#  apt_num        :integer          default(0), not null
#  card_num       :integer
#  city           :string           default(""), not null
#  country        :string           default(""), not null
#  cvc            :integer
#  email          :string
#  exp_month      :integer
#  exp_year       :integer
#  first_name     :string           default(""), not null
#  last_name      :string           default(""), not null
#  phone          :string
#  state          :string           default(""), not null
#  street_address :string           default(""), not null
#  zip_code       :integer          default(0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_transactions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
