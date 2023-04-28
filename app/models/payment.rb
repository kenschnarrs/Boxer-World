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
class Payment < ApplicationRecord
    belongs_to(
        :user,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :payments
    )
    has_many(
        :payment_items,
        class_name:  'PaymentItem',
        foreign_key: 'payment_id',
        inverse_of:  :payment,
        dependent:   :destroy
    )
    #  apt_number     :string
#  card_num       :integer
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
    validates :card_num, presence: true, format: { with: /\A\d{15,16}\z/, message: "must be a valid credit card number" }

    validates :city, presence: true
    validates :country, presence: true

    validates :cvc, presence: true, numericality: { only_integer: true }, format: { with: /\A\d{3,4}\z/, message: "must be a valid cvc" }
    validates :zip_code, length: { is: 5 }, numericality: { only_integer: true }

    validates :exp_month, presence: true, format: { with: /\A\d{1,2}\z/ }, 
        numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 12, only_integer: true}
    
    validates :exp_year, presence: true, format: { with: /\A\d{4}\z/ }, 
        numericality: { greater_than_or_equal_to: Date.today.year, only_integer: true}

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :state, presence: true
    validates :street_address, presence: true
    validates :zip_code, presence: true, length: { is: 5 }, numericality: { only_integer: true }
  

    has_many :items, through: :payment_items
end
