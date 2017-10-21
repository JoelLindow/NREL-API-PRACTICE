require 'rails_helper'

describe Station do
  it "exists" do
    valid_attributes = {
      station_name: "Joel Station",
      street_address: "12944 Dexter Way",
      city: "Thornton",
      state: "CO",
      zip: "80241",
      fuel_type_code: "ELEC",
      distance: 1.0,
      access_days_time: "24 hours"
    }

    station = Station.new(valid_attributes)
    expect(station.name).to eq("Joel Station")
    expect(station.address).to eq("12944 Dexter Way Thornton CO 80241")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.distance).to eq("1.0")
    expect(station.fuel_type).to eq("24 Hours")
  end
end
