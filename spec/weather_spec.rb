require 'spec_helper'

describe Weather do

    before(:all) do
      @random_city_id = RandomId.new.random
      @single_service = Weather.new.single_city_service
    end

    it "should return a hash" do
      expect(@single_service.get_single_city(@random_city_id)).to be_kind_of(Hash)
    end

    it "should put the city as a string" do
      expect(@single_service.get_city).to be_kind_of(String)
    end

    it "should put the ID as a float or integer" do
      expect(@single_service.get_id).to be_kind_of(String).or be_kind_of(Integer)
    end

    it "should put the main as a string" do
      expect(@single_service.get_main).to be_kind_of(String)
    end

    it "should put the description as a string" do
      expect(@single_service.get_desc).to be_kind_of(String)
    end

    it "should put the temperature as a float" do
      expect(@single_service.get_temp).to be_kind_of(Float)
    end

    it "should put the humidity as an integer" do
      expect(@single_service.get_humidity).to be_kind_of(Integer)
    end

    it "should put wind speed as a float or integer" do
      expect(@single_service.get_wind_speed).to be_kind_of(Float).or be_kind_of(Integer)
    end

    it "should put cloud coverage as an integer" do
      expect(@single_service.get_clouds).to be_kind_of(Integer)
    end

    it "should put the country as a string" do
      expect(@single_service.get_country).to be_kind_of(String)
    end

    # it "should put the sunrise as " do
    #   expect(@single_service.get_sunrise).to
    # end
    #
    # it "should put the sunset as " do
    #   expect(@single_service.get_sunset).to
    # end

end
