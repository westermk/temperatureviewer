require 'httparty'
response = HTTParty.get('http://api.wunderground.com/api/735c849d33f507e5/geolookup/conditions/q/46202.json')

location = response['location']['city']
state = response['location']['state']
zip = response['location']['zip']
lat = response['location']['lat']
lon = response['location']['lon']

temp_f = response['current_observation']['temp_f']
  
print " City #{location}\n State #{state}\n Zip #{zip}\n Latitude #{lat}\n longitude #{lon}"