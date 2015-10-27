class Bid < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validates :bidding_price, numericality: true
  validates :bidder, presence: true, length: { maximum: 30 }
end
