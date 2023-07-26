class LocationsController < ApplicationController
  before_action :set_user, only: [:new, :create, :edit, :update]
  CATEGORIES = ["Public Space", "Private Space"]


  def index
      @locations = Location.all
      @markers = @locations.geocoded.map do |location|
        {
          lat: location.latitude,
          lng: location.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: { location: location }),
          marker_html: render_to_string(partial: "marker")
        }
      end
  end

  def show
    @location = Location.find(params[:id])
    # Geocode the address to obtain latitude and longitude
    # Assign the latitude and longitude values from the model
    latitude = @location.latitude
    longitude = @location.longitude

    if latitude.present? && longitude.present?
      # Define the @markers variable with the pin location
      @markers = [{
        lat: latitude,
        lng: longitude,
        title: @location.name,
        info_window_html: render_to_string(partial: "info_window", locals: { location: @location }),
        marker_html: render_to_string(partial: "marker", locals: { location: @location })
      }]
    else
      # Handle the case where latitude or longitude is missing
      @markers = []
    end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    if @location.save
      # do reverse geoding
      # extract city and neighborhood from reverse geocing
      # assign values and update
      redirect_to @location, notice: 'Location was successfully created.'
    else
      render :new, notice: 'Location was not created. Please review your fields.'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to @location, notice: 'Location was successfully updated.'
    else
      render :edit, notice: 'Location was not updated. Please review your fields.'
    end
  end

  # def destroy
  #   @location.destroy
  #   redirect_to locations_url, notice: 'Location was successfully destroyed.'
  # end

  def my_locations
    @locations = current_user.locations
  end

  private

  def set_user
    @user = current_user
  end

  def location_params
    params.require(:location).permit(:name, :address, :city, :neighborhood, :category, :subcategory, :photo)
    # params.require(:location).permit(:name, :address, :category, :subcategory, :photo)
  end
end
