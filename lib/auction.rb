class Auction
  attr_reader :items
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map(&:name)
  end

  def unpopular_items
    @items.select { |item| item.bids.empty? }
  end

  def potential_revenue
    @items.map { |item| item.current_high_bid }.sum
  end

  def bidders
    @items.flat_map { |item| item.bids.keys.map(&:name) }.uniq
  end

  def bidder_info
    bidder_info = {}
    @items.each do |item|
      item.bids.each do |attendee, bid_amount|
        bidder_info[attendee] ||= { budget: attendee.budget, items: [] }
        bidder_info[attendee][:items] << item
      end
    end
    bidder_info
  end
end