class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def cities
    if params[:query].present?
      @locations = Location.all.find { |location| location.city == params[:query]} || "City not found"
    else
      @locations = Location.all
    end
  end
end
