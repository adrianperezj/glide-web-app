class ReviewsController < ApplicationController
  before_action :set_location, only: %i[new create edit update destroy]

  # Path: app/views/reviews/_form.html.erb
  def new
    @review = Review.new
  end

  def create
    # @review = current_user.reviews.build(review_params.merge(location: @location))
    @review = Review.new(review_params)
    @review.location = @location
    @review.user = current_user
    if @review.save
      redirect_to @location, notice: 'Review created successfully.'
    else
      render :new
    end
  end

  def update
    @review = current_user.reviews.find(params[:id])

    if @review.update(review_params)
      redirect_to @review.location
    else
      render :edit
    end
  end

  def destroy
    @review = current_user.reviews.find(params[:id])
    location = @review.location
    @review.destroy
    redirect_to location, notice: 'Review deleted successfully.'
  end

  def my_reviews
    @reviews = current_user.reviews
  end

  private

  def review_params
    params.require(:review).permit(:title, :comment, :meal_cost, :coffee_cost, :rent_cost, :beer_cost, :noise_level, :safety_level, :internet_speed, :family_zone, :nightlife, :pet_friendly, :restaurants_qty, :shopping, :metro, :bike, :bus, :uber, :dealer, :photo)
  end

  def set_location
    @location = Location.find_by(id: params[:location_id])

    unless @location
      redirect_to root_path, alert: 'Location not found.'
    end
  end
end
