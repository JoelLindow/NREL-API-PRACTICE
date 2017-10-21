class Station
  attr_reader :name, :station, :distance, :fuel_types, :access_times

  def initialize(station_data = {})
    @name         = station_data[:station_name]
    @fuel_types   = station_data[:fuel_type_code]
    @distance     = station_data[:distance]
    @access_times = station_data[:access_days_time]
    @station_data = station_data
  end

  def address
    "#{@station_data[:street_address]} #{@station_data[:city]} #{@station_data[:state]} #{@station_data[:zip]}"
  end

end
