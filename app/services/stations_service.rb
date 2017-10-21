class StationsService

  def create_stations(zip)
    raw_stations = NrelService.new.api_call(zip)

    stations = raw_stations.map do |station|
      Station.new(station)
    end

  end

end
