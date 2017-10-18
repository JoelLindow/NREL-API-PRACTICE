class SearchController < ApplicationController
  def index
    fuel_types = "LPG,ELEC"
    radius = 5.0
    zip = params["q"]

    conn = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=LPG,ELEC&state=CO&radius=5.0&zip=80203&limit=5&api_key=nuHt8BQdoOEbMl3sWRKXTOYNjGtEfFW814oWQNyE&format=JSON"


    raw_stations = JSON.parse(conn.body, symbolize_names: true)[:fuel_stations]

    @stations = raw_stations.map do |station|
      Station.new(station)
    end
  end
end
