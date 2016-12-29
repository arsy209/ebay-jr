class User < ActiveRecord::Base
  has_secure_password

  has_many :items_to_sell, { class_name: 'Item', foreign_key: :seller_id }
  has_many :bids, { foreign_key: :bidder_id }
  has_many :bidded_items, { through: :bids, source: :item }

  has_many :supported_sellers, { through: :bidded_items, source: :seller }
  has_many :sales, { through: :items_to_sell, source: :bids }
  has_many :buyers, { through: :items_to_sell, source: :bidders }

  validates :username, :email, { uniqueness: true, presence: true }
  validates :first_name, :last_name, :location, { presence: true }
  validates :password, length: { minimum: 8 }

end
