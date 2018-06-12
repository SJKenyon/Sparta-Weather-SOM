require 'httparty'
require 'json'

class SingleCityService
  include HTTParty

  base_uri 'https://api.openweathermap.org'

  def get_single_city(id)
    @single_city_data = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}&appid=6c0ce4d2e3d8847d703724be89137e88").body)
  end

  def get_city
    @single_city_data["name"]
  end

  def get_id
    @single_city_data["id"]
  end

end

# call = SingleCityService.new
# puts call.get_single_city(id)
# puts call.get_city
