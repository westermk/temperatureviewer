class Location < ActiveRecord::Base

  # This method passes the zip code from the form page and 
  # then pulls the data that matches that zip code
  def pop_weather(zip)
        
    response = HTTParty.get('http://api.wunderground.com/api/735c849d33f507e5/geolookup/conditions/q/' + zip + '.json')

    self.city = response['location']['city']
    self.state = response['location']['state']
    self.zip = response['location']['zip']
    self.lat = response['location']['lat']
    self.lon = response['location']['lon']

  end   

  attr_accessor :temp
  
  #def temp_for(zip)   
    #response = HTTParty.get('http://api.wunderground.com/api/735c849d33f507e5/weather/conditions/q/' + zip + '.json')    
    #self.temp = response['current_observation']['temp_f']    
    #:temp = response['location']['temperature']
  #end

end
