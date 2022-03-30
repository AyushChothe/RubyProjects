require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Reverse < Base
    def get_reverse(location)
      try do
        res = RestClient.get 'http://www.mapquestapi.com/geocoding/v1/reverse',
                             { params: { 'key': @@key, 'location': location } }
        JSON.load(res.body)
      end
    end

    def post_reverse(location)
      try do
        res = RestClient.post 'http://www.mapquestapi.com/geocoding/v1/reverse',
                              { 'key': @@key, 'location': location }
        JSON.load(res.body)
      end
    end
  end
end
