# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  apt_num                :integer          default(0), not null
#  blurb                  :text             default(""), not null
#  card_num               :integer          default(0), not null
#  city                   :string           default(""), not null
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  country                :string           default(""), not null
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  cvc                    :integer          default(0), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  exp_month              :integer          default(0), not null
#  exp_year               :integer          default(0), not null
#  failed_attempts        :integer          default(0), not null
#  first_name             :string           default(""), not null
#  last_name              :string           default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  phone                  :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  state                  :string           default(""), not null
#  street_address         :string           default(""), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  username               :string           default(""), not null
#  zip_code               :integer          default(0), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord

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
          :transactions,
          class_name:  'Transaction',
          foreign_key: 'user_id',
          inverse_of:  :user,
          dependent:   :destroy
        )

        has_one(
          :cart,
          class_name: 'Cart',
          foreign_key: 'user_id',
          inverse_of:  :user,
        )

end
