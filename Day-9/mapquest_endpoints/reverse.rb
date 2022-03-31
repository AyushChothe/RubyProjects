require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Reverse < Base
    def get_reverse(location)
      make_request(:get, REVERSE, { 'location': location })
    end

    def post_reverse(location)
      make_request(:post, REVERSE, { 'location': location })
    end
  end
end
