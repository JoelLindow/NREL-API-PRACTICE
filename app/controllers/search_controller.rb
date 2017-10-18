class SearchController < ApplicationController
  def index
    fuel_types = "LPG,ELEC"
    radius = 5.0
    zip = params["q"]

    @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=#{fuel_types}&state=CO&radius=#{radius}&zip=#{zip}&limit=5&api_key=#{ENV["NREL_KEY"]}&format=JSON")

  binding.pry



  end
end
