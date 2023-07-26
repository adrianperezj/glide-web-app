class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def cities
    if params[:query].present?
      # @locations = Location.all.find { |location| location.city == params[:query]} || "City not found"
      @locations = Location.search_by_city_and_neighborhood(params[:query]).first
    else
      # return all locations excluding repeated cities, include only the first location with city
      # @locations = Location.all.group_by(&:city).map { |city, locations| locations.first }
    end
  end

  def city_show
    @location = Location.find(params[:id])
  end
end
