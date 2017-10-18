class Station

  def initialize(station_data = {})
    @name         = station_data[:station_name]
    @address      = station_data[:street_address]
    @fuel_types   = station_data[:fuel_type_code]
    # @distance     = station_data[]
    @access_times = station_data[:access_days_time]
  end

end
