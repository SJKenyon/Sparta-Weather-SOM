require 'httparty'
require 'json'

class RandomCityService
  include HTTParty

  base_uri 'https://api.openweathermap.org'

  def get_random_city
    @random_city_data = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}&appid=23d03af0c966e7e228fd273112acdd80").body)
    # ["result"]["postcode"].gsub(" ","")
  end

  def get_result
    @random_city_data
  end

end

call = RandomCityService.new
# puts call.get_random_city
call.get_result
# puts call.get_postcode
