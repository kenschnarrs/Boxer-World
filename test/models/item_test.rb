# == Schema Information
#
# Table name: items
#
#  id           :bigint           not null, primary key
#  brand        :string           default(""), not null
#  category     :string           default(""), not null
#  description  :string           default(""), not null
#  in_stock     :boolean          default(TRUE)
#  isFeatured   :boolean          default(FALSE), not null
#  name         :string           default(""), not null
#  num_in_stock :integer          default(0), not null
#  price        :decimal(, )      default(0.0), not null
#  rating       :decimal(, )      default(0.0), not null
#  size         :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
