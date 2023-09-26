require './lib/item'
require './lib/auction'
require './lib/attendee'

RSpec.describe Attendee do
  before(:each) do
    @attendee = Attendee.new({name: 'Megan', budget: '$50'})
    # @item1 = Item.new('Chalkware Piggy Bank')
    # @item2 = Item.new('Bamboo Picture Frame')
  end

  describe '#initialize' do
    it 'exists and has attributes' do
      expect(@attendee).to be_a(Attendee)
      expect(@attendee.name).to eq('Megan')
      expect(@attendee.budget).to eq(50)
    end
  end
end