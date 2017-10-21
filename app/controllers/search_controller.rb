class SearchController < ApplicationController
  def index
    fuel_types = "LPG,ELEC"
    radius = 6.0
    zip = params["q"]
    limit = 10

    request = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?format=JSON" do |faraday|
      faraday.params[:fuel_type] = fuel_types
      faraday.params[:state] = "CO"
      faraday.params[:radius] = radius
      faraday.params[:location] = zip
      faraday.params[:limit] = limit
      faraday.params[:api_key] = ENV["NREL_KEY"]
    end

    raw_stations = JSON.parse(request.body, symbolize_names: true)[:fuel_stations]

    @stations = raw_stations.map do |station|
      Station.new(station)
    end
  end
end
