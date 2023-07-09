class Review < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_one_attached :photo

  validates :title, presence: true
  validates :comment, presence: true

  # Expenses

  validates :meal_cost, numericality: { allow_nil: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999_999.99 }
  validates :coffee_cost, numericality: { allow_nil: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999_999.99 }
  validates :rent_cost, numericality: { allow_nil: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999_999.99 }
  validates :beer_cost, numericality: { allow_nil: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 999_999.99 }

  # Ratings

  validates :noise_level, inclusion: { in: 1..5, allow_nil: true }
  validates :safety, inclusion: { in: 1..5, allow_nil: true }
  validates :internet_speed, inclusion: { in: 1..5, allow_nil: true }
  validates :family_zone, inclusion: { in: 1..5, allow_nil: true }
  validates :nightlife, inclusion: { in: 1..5, allow_nil: true }
  validates :pet_friendly, inclusion: { in: 1..5, allow_nil: true }
  validates :restaurants_qty, inclusion: { in: 1..5, allow_nil: true }
  validates :shopping, inclusion: { in: 1..5, allow_nil: true }

  # Transportation

  validates :metro, inclusion: { in: [true, false], allow_nil: true }
  validates :bike, inclusion: { in: [true, false], allow_nil: true }
  validates :bus, inclusion: { in: [true, false], allow_nil: true }
  validates :uber, inclusion: { in: [true, false], allow_nil: true }
  validates :dealer, inclusion: { in: [true, false], allow_nil: true }
end
