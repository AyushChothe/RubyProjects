# 3. Create a ruby module named "mapquest" for abstracting the interactions with Mapquest API.
#       Implement a demo function which will utilize the functionality.
#       Using separate module instead of direct requests will avoid duplicate code for handling exceptions,
#       retry-mechanism, authentication, etc.
#       And it will be easy to update code in future at only one place instead of in each file it is used.

# GeoCoding API: https://developer.mapquest.com/documentation/geocoding-api/
# Getting Auth Key: https://developer.mapquest.com/user/me/apps

# Only following geocoding related endpoints needs to be integrated (GET and POST).
# - geocoding/v1/address
# - geocoding/v1/reverse
# - geocoding/v1/batch

# - Find a way to using session like object to avoid repetition of authentication or header setting etc.
# - Do appropriate logging in log file
# - Use retry mechanism
# - Use exception handling

require_relative 'mapquest_endpoints/base'
require_relative 'mapquest_endpoints/address'
require_relative 'mapquest_endpoints/batch'
require_relative 'mapquest_endpoints/reverse'

MapQuest::Base.set_key('F4VdDfuWV9Oebf5EpC8CBqbA8VJUJ90Q')

# puts MapQuest::Address.new.get_address('Vita,Sangli,IN')
# puts MapQuest::Address.new.post_address('Vita,Sangli,IN')

# puts MapQuest::Reverse.new.get_reverse('30.333472,-81.470448')
# puts MapQuest::Reverse.new.post_reverse('30.333472,-81.470448')

# puts MapQuest::Batch.new.get_batch(Array.new(['Sangli, IN', 'Vita, IN', 'Karad, IN']))
# puts MapQuest::Batch.new.post_batch(Array.new(['Sangli, IN', 'Vita, IN', 'Karad, IN']))
