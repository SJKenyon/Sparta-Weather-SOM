require_relative "services/city_service"
require_relative "services/random_city_service"
require_relative "services/city_ids"

class Weather

  def single_city_service
    SingleCityService.new
  end

end
