class SearchController < ApplicationController
  def index
    fuel_types = "LPG,ELEC"
    radius = 5.0
    zip = params["q"]

    @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=LPG,ELEC&state=CO&radius=5.0&zip=80203&limit=5&api_key=nuHt8BQdoOEbMl3sWRKXTOYNjGtEfFW814oWQNyE&format=JSON")

  # binding.pry



  end
end
