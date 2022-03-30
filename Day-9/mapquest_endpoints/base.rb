require_relative 'base'
require 'rest-client'
require 'json'
module MapQuest
  class Base
    # Auth
    @@key = 'F4VdDfuWV9Oebf5EpC8CBqbA8VJUJ90Q'
    def try(times = 3)
      retries = 0
      begin
        yield()
      rescue StandardError => e
        if retries < times
          retries += 1
          puts 'Retrying...'
          retry
        else
          raise e
        end
      end
    end
  end
end
