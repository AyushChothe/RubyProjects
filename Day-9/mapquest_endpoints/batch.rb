require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Batch < Base
    def get_batch(locations)
      make_request(:get, BATCH + '?' + locations.map { |loc| 'location=' + loc }.join('&'))
    end

    def post_batch(locations)
      make_request(:post, BATCH, { 'locations': locations }.to_json)
    end
  end
end
