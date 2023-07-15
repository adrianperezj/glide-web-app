class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def cities
      @cities = Location.all.map { |location| location.city }.uniq
  end
end
