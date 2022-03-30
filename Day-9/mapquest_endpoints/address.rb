require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Address < Base
    def get_address(location)
      try do
        res = RestClient.get 'http://www.mapquestapi.com/geocoding/v1/address',
                             { params: { 'key': @@key, 'location': location } }
        JSON.load(res.body)
      end
    end

    def post_address(location)
      try do
        res = RestClient.post 'http://www.mapquestapi.com/geocoding/v1/address',
                              { 'key': @@key, 'location': location }
        JSON.load(res.body)
      end
    end
  end
end
