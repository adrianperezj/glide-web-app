class LocationsController < ApplicationController
  before_action :set_user, only: [:new, :create, :edit, :update]

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
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
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

  private

  def set_user
    @user = current_user
  end

  def location_params
    params.require(:location).permit(:name, :address, :category, :subcategory, :photo)
  end
end
