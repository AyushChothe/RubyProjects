require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Base
    # Auth
    @@key = 'F4VdDfuWV9Oebf5EpC8CBqbA8VJUJ90Q'

    ADDRESS = 'http://www.mapquestapi.com/geocoding/v1/address'
    REVERSE = 'http://www.mapquestapi.com/geocoding/v1/reverse'
    BATCH = 'http://www.mapquestapi.com/geocoding/v1/batch'

    def self.set_key(key)
      @@key = key
    end

    def make_request(method, url, payload = {})
      try do
        params = method == :get ? payload.merge({ key: @@key }) : { key: @@key }
        args = { method: method, url: url, headers: { params: params } }
        RestClient::Request.execute(method == :get ? args : args.merge({ payload: payload }))
      end
    end

    def try(times = 3)
      retries = 0
      begin
        res = yield()
        body = JSON.load(res.body)
        code = body['info']['statuscode']

        case code
        when 0
          body
        when 400
          'Error with input'
        when 403
          'Key related error'
        when 500
          'Unknown error'
        end
      rescue JSON::ParserError
        puts 'Something went wrong!'
      rescue RestClient::ExceptionWithResponse => e
        e.response
      rescue StandardError => e
        if retries < times
          retries += 1
          puts 'Retrying...'
          # retry-after
          retry
        else
          raise e
        end
      end
    end
  end
end
