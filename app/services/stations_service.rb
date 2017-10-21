class StationsService

  def search_by_zip(zip)
    request = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?format=JSON" do |faraday|
      faraday.params[:fuel_type] = "LPG,ELEC"
      faraday.params[:state] = "CO"
      faraday.params[:radius] = 6.0
      faraday.params[:location] = zip
      faraday.params[:limit] = 10
      faraday.params[:api_key] = ENV["NREL_KEY"]
    end

    raw_stations = JSON.parse(request.body, symbolize_names: true)[:fuel_stations]

    @stations = raw_stations.map do |station|
      Station.new(station)
    end
  end


end
