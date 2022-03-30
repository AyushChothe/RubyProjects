require 'rspec'
require_relative 'mapquest'

RSpec.describe MapQuest::Address do
  describe '#get_address' do
    before do
      @client = MapQuest::Address.new
    end
    it 'Get Address from API (GET)' do
      res = @client.get_address('Vita,IN')
      expect(res.class).to eq(Hash)
    end
    after do
      puts ''
      print '#get_address Executed'
    end
  end

  describe '#post_address' do
    before do
      @client = MapQuest::Address.new
    end
    it 'Get Address from API (GET)' do
      res = @client.post_address('Vita,IN')
      expect(res.class).to eq(Hash)
    end
    after do
      puts ''
      print '#post_address Executed'
    end
  end
end

RSpec.describe MapQuest::Reverse do
  describe '#get_reverse' do
    before do
      @client = MapQuest::Reverse.new
    end
    it 'Get Reverse from API (GET)' do
      res = @client.get_reverse('30.333472,-81.470448')
      expect(res.class).to eq(Hash)
    end
    after do
      puts ''
      print '#get_reverse Executed'
    end
  end

  describe '#post_reverse' do
    before do
      @client = MapQuest::Reverse.new
    end
    it 'Get Reverse from API (POST)' do
      res = @client.post_reverse('30.333472,-81.470448')
      expect(res.class).to eq(Hash)
    end
    after do
      puts ''
      print '#post_reverse Executed'
    end
  end
end

RSpec.describe MapQuest::Batch do
  describe '#get_batch' do
    before do
      @client = MapQuest::Batch.new
    end
    it 'Get Batch from API (GET)' do
      res = @client.get_batch(['Sangli, IN', 'Vita, IN', 'Karad, IN'])
      expect(res.class).to eq(Hash)
    end
    after do
      puts ''
      print '#get_batch Executed'
    end
  end

  describe '#post_batch' do
    before do
      @client = MapQuest::Batch.new
    end
    it 'Get Batch from API (POST)' do
      res = @client.post_batch(['Sangli, IN', 'Vita, IN', 'Karad, IN'])
      expect(res.class).to eq(Hash)
    end
    after do
      puts ''
      print '#post_batch Executed'
    end
  end
end
