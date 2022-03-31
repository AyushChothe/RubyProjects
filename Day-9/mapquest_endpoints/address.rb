require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Address < Base
    def get_address(location)
      make_request(:get, ADDRESS, { 'location': location })
    end

    def post_address(location)
      make_request(:post, ADDRESS, { 'location': location })
    end
  end
end
