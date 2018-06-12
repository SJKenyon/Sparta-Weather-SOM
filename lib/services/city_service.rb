require 'httparty'
require 'json'
require_relative "city_ids"

class SingleCityService
  include HTTParty

  base_uri 'https://api.openweathermap.org'

  def get_single_city(id)
    @single_city_data = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}&appid=6c0ce4d2e3d8847d703724be89137e88").body)
  end

  # Coordinates

  def get_coord_hash
    @single_city_data["coord"]
  end

  def get_long
    @single_city_data["coord"]["lon"]
  end

  def get_lat
    @single_city_data["coord"]["lat"]
  end

  # Weather

  def get_weather_hash
    @single_city_data["weather"][0].count
  end

  def get_weather_id
    @single_city_data["weather"][0]["id"]
  end

  def get_main
    @single_city_data["weather"][0]["main"]
  end

  def get_desc
    @single_city_data["weather"][0]["description"]
  end

  def get_icon
    @single_city_data["weather"][0]["icon"]
  end

  # Base

  def get_base
    @single_city_data["base"]
  end

  # Main

  def get_main_hash
    @single_city_data["main"]
  end

  def get_temp
    @single_city_data["main"]["temp"]
  end

  def get_pressure
    @single_city_data["main"]["pressure"]
  end

  def get_humidity
    @single_city_data["main"]["humidity"]
  end

  def get_temp_min
    @single_city_data["main"]["temp_min"]
  end

  def get_temp_max
    @single_city_data["main"]["temp_max"]
  end


  # Visibility
  # Wind
  # Clouds
  # Dt
  # Sys
  # ID
  # Name
  # Cod

  def get_city
    @single_city_data["name"]
  end

  def get_id
    @single_city_data["id"]
  end

  def get_wind_speed
    @single_city_data["wind"]["speed"]
  end

  def get_clouds
    @single_city_data["clouds"]["all"]
  end

  def get_country
    @single_city_data["sys"]["country"]
  end

  def get_sunrise
    @single_city_data["sys"]["sunrise"]
  end

  def get_sunset
    @single_city_data["sys"]["sunset"]
  end

  def get_weather_forcast
    puts "The weather in " + @single_city_data["name"] + ", " + @single_city_data["sys"]["country"] + " today is " + @single_city_data["weather"][0]["main"] + ". The temperature is " + @single_city_data["main"]["temp"].to_s + "F with humidity of " + @single_city_data["main"]["humidity"].to_s + "%. The wind speed is " + @single_city_data["wind"]["speed"].to_s + " m/s."
  end

end

# call = SingleCityService.new
# call.get_single_city(RandomId.new.random)
# call.get_weather_forcast
