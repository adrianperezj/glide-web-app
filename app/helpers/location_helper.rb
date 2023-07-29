module LocationHelper
  def average_rating(attribute)
    ratings = @location.reviews.pluck(attribute).compact
    total_ratings = ratings.size
    average = total_ratings.positive? ? ratings.sum / total_ratings :  0
    sprintf("%.2f", average)
  end

  def percentage_rating(attribute)
    total_reviews = @location.reviews.count
    true_count = @location.reviews.count { |review| review.send(attribute) }
    percentage = total_reviews.positive? ? (true_count / total_reviews.to_f) * 100 : 0
    percentage.round(2)
  end

  def average_rating_by_city(city, attribute)
    locations = Location.where(city: city)
    return 0 if locations.empty?

    reviews = Review.where(location_id: locations.pluck(:id))
    ratings = reviews.pluck(attribute).compact
    total_ratings = ratings.size
    average = total_ratings.positive? ? ratings.sum.to_f / total_ratings : 0
    sprintf("%.2f", average)
  end

  def percentage_rating_by_city(city, attribute)
    locations = Location.where(city: city)
    return 0 if locations.empty?

    reviews = Review.where(location_id: locations.pluck(:id))
    total_reviews = reviews.count
    true_count = reviews.count { |review| review.send(attribute) }
    percentage = total_reviews.positive? ? (true_count.to_f / total_reviews) * 100 : 0
    percentage.round(2)
  end

  def average_rating_by_neighborhood(neighborhood, attribute)
    locations = Location.where(neighborhood: neighborhood)
    return 0 if locations.empty?

    reviews = Review.where(location_id: locations.pluck(:id))
    ratings = reviews.pluck(attribute).compact
    total_ratings = ratings.size
    average = total_ratings.positive? ? ratings.sum.to_f / total_ratings : 0
    sprintf("%.2f", average)
  end

  def percentage_rating_by_neighborhood(neighborhood, attribute)
    locations = Location.where(neighborhood: neighborhood)
    return 0 if locations.empty?

    reviews = Review.where(location_id: locations.pluck(:id))
    total_reviews = reviews.count
    true_count = reviews.count { |review| review.send(attribute) }
    percentage = total_reviews.positive? ? (true_count.to_f / total_reviews) * 100 : 0
    percentage.round(2)
  end



  def neighborhoods(city)
    neighborhoods = Location.where(city: city).pluck(:neighborhood).uniq
    neighborhoods.any? ? neighborhoods : ['No neighborhoods found']
  end
end
