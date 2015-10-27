json.array!(@bids) do |bid|
  json.extract! bid, :id, :bidder, :bidding_price, :product_id, :user_id
  json.url bid_url(bid, format: :json)
end
