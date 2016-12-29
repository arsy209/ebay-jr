class Bid < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :item
  belongs_to :bidder, { class_name: 'User', foreign_key: :bidder_id }

  validates :bid_amount, presence: true
end
