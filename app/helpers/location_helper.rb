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
end
