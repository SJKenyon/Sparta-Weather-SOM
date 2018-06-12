require 'spec_helper'

describe Weather do

    before(:all) do
      random_city_id = RandomId.new.random
      @single_service = Weather.new.single_city_service
      @single_service.get_single_city(random_city_id)
    end

    it "should put the city as a string" do
      puts @single_service.get_city
      expect(@single_service.get_city).to be_kind_of(String)
    end

    it "should put the ID as a float or integer" do
      expect(@single_service.get_id).to be_kind_of(String).or be_kind_of(Integer)
    end

end
