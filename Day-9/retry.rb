# 2. implement the retry mechanism in the task 1 (PhishTank) with backoff time for the fault tolerance of request.
# Find out how retry machanism for all of the rest api package works.
require 'rest-client'
require 'json'

# PhishTankAPI Module
module PhishTankAPI
  def self.check_url(url)
    retries = 0
    begin
      res = RestClient.post 'https://checkurl.phishtank.com/checkurl/index.php', {
        'format' => 'json',
        'url' => url
      }
      result = JSON.load(res.body)['results']
      "\"#{result['url']}\" is #{result['valid'] ? 'a' : 'not a'} phishing URL."
    rescue StandardError
      if retries < 3
        retries += 1
        puts 'Retrying...'
        retry
      end
    end
  end
end

puts PhishTankAPI.check_url('http://www.travelswitchfly.com/')
puts PhishTankAPI.check_url('http://www.google.com/')
