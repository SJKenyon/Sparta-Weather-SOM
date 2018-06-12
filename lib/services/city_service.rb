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

  def get_visibility
    @single_city_data["visibility"]
  end

  # Wind

  def get_wind_hash
    @single_city_data["wind"]
  end

  def get_wind_speed
    @single_city_data["wind"]["speed"]
  end

  def get_wind_deg
    @single_city_data["wind"]["deg"]
  end

  # Clouds

  def get_clouds
    @single_city_data["clouds"]["all"]
  end

  # Dt

  def get_dt
    @single_city_data["dt"]
  end

  # Sys

  def get_sys_hash
    @single_city_data["sys"]
  end

  def get_type
    @single_city_data["sys"]["type"]
  end

  def get_sys_id
    @single_city_data["sys"]["id"]
  end

  def get_message
    @single_city_data["sys"]["message"]
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

  # ID

  def get_id
    @single_city_data["id"]
  end

  # Name

  def get_city
    @single_city_data["name"]
  end

  # Cod

  def get_cod
    @single_city_data["cod"]
  end

  # Weather Forcast

  def get_weather_forcast
    puts "The weather in " + @single_city_data["name"] + ", " + @single_city_data["sys"]["country"] + " today is " + @single_city_data["weather"][0]["main"] + ". The temperature is " + @single_city_data["main"]["temp"].to_s + "F with humidity of " + @single_city_data["main"]["humidity"].to_s + "%. The wind speed is " + @single_city_data["wind"]["speed"].to_s + " m/s."
  end

end

# call = SingleCityService.new
# call.get_single_city(RandomId.new.random)
# call.get_weather_forcast
