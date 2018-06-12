require 'spec_helper'

describe Weather do

    before(:all) do
      @random_city_id = RandomId.new.random
      @single_service = Weather.new.single_city_service
    end

    it "should return a hash" do
      expect(@single_service.get_single_city(@random_city_id)).to be_kind_of(Hash)
    end

    # Testing coordinates

    it "should return a hash for coordinates" do
      expect(@single_service.get_coord_hash).to be_kind_of(Hash)
    end

    it "should put the longitude as a float" do
      expect(@single_service.get_long).to be_kind_of(Float)
    end

    it "should put the latitude as a float" do
      expect(@single_service.get_lat).to be_kind_of(Float)
    end

    # Testing weather

    it "should have an array of length 4 inside weather" do
      expect(@single_service.get_weather_hash).to eq 4
    end

    it "should put the weather id as an integer" do
      expect(@single_service.get_weather_id).to be_kind_of(Integer)
    end

    it "should put the main as a string" do
      expect(@single_service.get_main).to be_kind_of(String)
    end

    it "should put the description as a string" do
      expect(@single_service.get_desc).to be_kind_of(String)
    end

    it "should put icon as a string" do
      expect(@single_service.get_icon).to be_kind_of(String)
    end

    # Testing base

    it "should put base as a string" do
      expect(@single_service.get_base).to be_kind_of(String)
    end

    # Testing main

    it "should put the temperature as a float" do
      expect(@single_service.get_temp).to be_kind_of(Float)
    end

    it "should put the pressure as an integer" do
      expect(@single_service.get_pressure).to be_kind_of(Integer).or be_kind_of(Float).or be nil
    end

    it "should put the humidity as an integer" do
      expect(@single_service.get_humidity).to be_kind_of(Integer)
    end

    # Testing visibility

    it "should put the visibility as an integer" do
      expect(@single_service.get_visibility).to be_kind_of(Integer).or be nil
    end

    # Testing wind

    it "should return a hash for wind" do
      expect(@single_service.get_wind_hash).to be_kind_of(Hash)
    end

    it "should put wind speed as a float or integer" do
      expect(@single_service.get_wind_speed).to be_kind_of(Float).or be_kind_of(Integer)
    end

    it "should return wind degrees as a float or integer" do
      expect(@single_service.get_wind_deg).to be_kind_of(Float).or be_kind_of(Integer).or be nil
    end

    # Testing clouds

    it "should put cloud coverage as an integer" do
      expect(@single_service.get_clouds).to be_kind_of(Integer)
    end

    # Testing dt

    it "should return dt as an integer" do
      expect(@single_service.get_dt).to be_kind_of(Integer)
    end

    # Testing sys

    it "should return a hash for sys" do
      expect(@single_service.get_sys_hash).to be_kind_of(Hash)
    end

    it "should put type as an integer" do
      expect(@single_service.get_type).to be_kind_of(Integer)
    end

    it "should put sys id as an integer" do
      expect(@single_service.get_sys_id).to be_kind_of(Integer)
    end

    it "should put the country as a string" do
      expect(@single_service.get_country).to be_kind_of(String)
    end

    it "should put the sunrise as an integer" do
      expect(@single_service.get_sunrise).to be_kind_of(Integer)
    end

    it "should put the sunset as an integer" do
      expect(@single_service.get_sunset).to be_kind_of(Integer)
    end

    # Testing id

    it "should put the ID as a float or integer" do
      expect(@single_service.get_id).to be_kind_of(String).or be_kind_of(Integer)
    end

    # Testing name

    it "should put the city as a string" do
      expect(@single_service.get_city).to be_kind_of(String)
    end

    # Testing cod

    it "should put cod as an integer" do
      expect(@single_service.get_cod).to be_kind_of(Integer)
    end

end
