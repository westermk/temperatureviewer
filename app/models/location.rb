class Location < ActiveRecord::Base

  def pop_weather(zip)
    
    response = HTTParty.get('http://api.wunderground.com/api/735c849d33f507e5/geolookup/conditions/q/' + zip + '.json')

    self.city = response['location']['city']
    self.state = response['location']['state']
    self.zip = response['location']['zip']
    self.lat = response['location']['lat']
    self.lon = response['location']['lon']

    
  end   

end
