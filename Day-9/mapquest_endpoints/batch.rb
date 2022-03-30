require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Batch < Base
    def get_batch(locations)
      try do
        locs = locations.map { |l| '&location=' + l }.join('')
        res = RestClient.get "http://www.mapquestapi.com/geocoding/v1/batch?key=#{@@key}#{locs}"
        JSON.load(res.body)
      end
    end

    def post_batch(locations)
      try do
        res = RestClient.post "http://www.mapquestapi.com/geocoding/v1/batch?key=#{@@key}",
                              { 'locations': locations }.to_json
        JSON.load(res.body)
      end
    end
  end
end
