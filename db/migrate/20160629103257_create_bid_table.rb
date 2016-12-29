class CreateBidTable < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.float      :bid_amount, null: false
      t.references :bidder, index: true
      t.references :item, index: true

      t.timestamps(null: false)
    end
  end
end
