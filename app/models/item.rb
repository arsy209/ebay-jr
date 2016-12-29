class Item < ActiveRecord::Base
  # Remember to create a migration!
  has_many :bids, { class_name: 'Bid', foreign_key: :item_id }
  has_many :bidders, { through: :bids, source: :bidder }
  belongs_to :seller, { class_name: 'User', foreign_key: :seller_id }

  validates :name, :description, :price, :start_time, :end_time, presence: true
  validate :post_time, on: :save
  validate :start, on: :save


  def post_time
     self.end_time > self.start_time
     @errors = ["The end time for the item must be after the start time."]
  end

  def start
    self.start_time > Time.now
    @errors = ["The start time for the item must be after the current time."]
  end
end
