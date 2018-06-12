require 'spec_helper'

describe Weather do

    before(:all) do
      # random_postcode = RandomCityService.new.get_random_postcode
      @single_service = Weather.new.single_city_service
      @single_service.get_single_city(2172797)
    end

    it "should put the city as a string" do
      expect(@single_service.get_city).to be_kind_of(String)
    end

end
