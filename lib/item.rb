class Item
  attr_reader :name, :bids
  def initialize(name)
    @name = name
    @bids = {}
  end

  def add_bid(attendee, bid)
    return if @closed 
    
    @bids[attendee] = bid
  end

  def current_high_bid
    @bids.values.max || 0
  end

  def close_bidding
    @closed = true
  end

  def closed?
    @closed == true
  end
end