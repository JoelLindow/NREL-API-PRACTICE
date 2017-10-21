class SearchController < ApplicationController
  def index
    @stations = StationsService.new.create_stations(params[:q])
  end
end
