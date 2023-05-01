# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  apt_num                :integer          default(100), not null
#  blurb                  :text             default("I'm Mike Tyson!"), not null
#  card_num               :bigint           default(5218215677349869), not null
#  city                   :string           default("Champ city"), not null
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  country                :string           default("Champ Country"), not null
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  cvc                    :integer          default(999), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  exp_month              :integer          default(11), not null
#  exp_year               :integer          default(2029), not null
#  failed_attempts        :integer          default(0), not null
#  first_name             :string           default("Mike"), not null
#  last_name              :string           default("Tyson"), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  phone                  :string           default("1234567890"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  state                  :string           default("Champ State"), not null
#  street_address         :string           default("Champ St"), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  username               :string           default("miketyson45"), not null
#  zip_code               :integer          default(12345), not null
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

  validates :card_num, format: { with: /\A\d{15,16}\z/, message: "must be a valid credit card number" }
  validates :cvc, numericality: { only_integer: true }, format: { with: /\A\d{3,4}\z/, message: "must be a valid cvc" }
  validates :exp_month, format: { with: /\A\d{1,2}\z/, message: "must be a valid month" }, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 12, only_integer: true}
  validates :exp_year, format: { with: /\A\d{4}\z/, message: "must be a valid year"}, numericality: { greater_than_or_equal_to: Date.today.year, only_integer: true}
  
  validates :username, presence: true
  validates :phone, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  validates :street_address, presence: true
  validates :zip_code, length: { is: 5 }, numericality: { only_integer: true }
  validates :state, presence: true
  validates :city, presence: true
  validates :country, presence: true

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
