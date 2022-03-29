# 1. Write a python program using "faraday", "httparty" (3rdparty) and "nethttp" (in-built) module to integrate "PhishTank" service.
# PhishTank is a free online service, which stores information about Phishing URLs.
# The Input to the program should be a URL. The output should tell us whether the input url is Phishing URL or not.
# Implement a demo function which will utilize the functionality.

# Input: http://www.travelswitchfly.com/
# Output: "http://www.travelswitchfly.com/" is a phishing URL.
# PhishTank API - https://www.phishtank.com/api_info.php
# POST Endpoint - https://checkurl.phishtank.com/checkurl/index.php

require 'rest-client'
require 'json'

# PhishTankAPI Module
module PhishTankAPI
  def self.check_url(url)
    res = RestClient.post 'https://checkurl.phishtank.com/checkurl/index.php', {
      'format' => 'json',
      'url' => url
    }
    result = JSON.load(res.body)['results']
    "\"#{result['url']}\" is #{result['valid'] ? 'a' : 'not a'} phishing URL."
  end
end

puts PhishTankAPI.check_url('http://www.travelswitchfly.com/')
puts PhishTankAPI.check_url('http://www.google.com/')
