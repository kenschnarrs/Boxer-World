# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  apt_num                :integer          default(100)
#  blurb                  :text             default(""), not null
#  card_num               :bigint           default(1000000000000000)
#  city                   :string           default("")
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  country                :string           default("")
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  cvc                    :integer          default(999)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  exp_month              :integer          default(11)
#  exp_year               :integer          default(2029)
#  failed_attempts        :integer          default(0), not null
#  first_name             :string           default("")
#  last_name              :string           default("")
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  phone                  :string           default("0000000000"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  state                  :string           default("")
#  street_address         :string           default("")
#  unconfirmed_email      :string
#  unlock_token           :string
#  username               :string           default("New User"), not null
#  zip_code               :integer          default(99999)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  
  has_many :wishlists, dependent: :destroy

  before_create :set_defaults
  
  def set_defaults
    self.username ||= generate_unique_username
  end

  def generate_unique_username
    base_username = self.name.parameterize(separator: '_')
    username = base_username.dup
    num = 1

    while self.class.exists?(username: username)
      username = "#{base_username}_#{num}"
      num += 1
    end

    username
  end

  validates :card_num, allow_nil: true, allow_blank: true, format: { with: /\A\d{15,16}\z/, message: "must be a valid credit card number" }
  validates :cvc, allow_nil: true, allow_blank: true, numericality: { only_integer: true }, format: { with: /\A\d{3,4}\z/, message: "must be a valid cvc" }
  validates :exp_month, allow_nil: true, allow_blank: true, format: { with: /\A\d{1,2}\z/, message: "must be a valid month" }, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 12, only_integer: true}
  validates :exp_year, allow_nil: true, allow_blank: true, format: { with: /\A\d{4}\z/, message: "must be a valid year"}, numericality: { greater_than_or_equal_to: Date.today.year, only_integer: true}
  validates :zip_code, allow_nil: true, allow_blank: true, length: { is: 5 }, numericality: { only_integer: true }
  validates :phone, allow_nil: true, allow_blank: true, length: { is: 10 }, numericality: { only_integer: true }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many(
    :reviews,
    class_name:  'Review',
    foreign_key: 'user_id',
    inverse_of:  :user,
    dependent:   :destroy
  )

  has_many(
    :payments,
    class_name:  'Payment',
    foreign_key: 'user_id',
    inverse_of:  :user,
    dependent:   :destroy
  )

  has_one(
    :cart,
    class_name: 'Cart',
    foreign_key: 'user_id',
    inverse_of:  :user,
    dependent:   :destroy
  )

end
