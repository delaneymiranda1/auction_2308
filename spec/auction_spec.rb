require './lib/item'
require './lib/auction'
require './lib/attendee'

RSpec.describe Auction do
  before(:each) do
    @auction = Auction.new
    # @attendee = Attendee.new({name: 'Megan', budget: '$50'})
    @item1 = Item.new('Chalkware Piggy Bank')
    @item2 = Item.new('Bamboo Picture Frame')
  end

  describe '#initialize' do
    it 'exists and has attributes' do
      expect(@auction).to be_a(Auction)
      expect(@auction.items).to eq([])
    end
  end

  describe '#add_item(item)' do
    it 'can add items' do
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.items).to include(@item1, @item2)
    end
  end

  describe '#item_names' do
    it 'can return item names' do
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.item_names).to eq(['Chalkware Piggy Bank', 'Bamboo Picture Frame'])
    end
  end
end