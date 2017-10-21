class SearchController < ApplicationController
  def index
    @stations = StationsService.new.api_call(params[:q])
  end
end
