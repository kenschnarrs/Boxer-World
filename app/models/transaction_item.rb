# == Schema Information
#
# Table name: transaction_items
#
#  id             :bigint           not null, primary key
#  quantity       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  item_id        :bigint           not null
#  transaction_id :bigint           not null
#
# Indexes
#
#  index_transaction_items_on_item_id         (item_id)
#  index_transaction_items_on_transaction_id  (transaction_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (transaction_id => transactions.id)
#
class TransactionItem < ApplicationRecord
  belongs_to(
    :item,
    class_name:  'Item',
    foreign_key: 'item_id',
    inverse_of:  :transaction_items
  )

  belongs_to(
    :transaction,
    class_name:  'Transaction',
    foreign_key: 'transaction_id',
    inverse_of:  :transaction_items
  )
end
