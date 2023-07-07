class Review < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_one_attached :photo


  validates :title, presence: true
  validates :comment, presence: true
  validates :noise_level, presence: true
  validates :safety, presence: true
  validates :internet_speed, presence: true
  validates :family_zone, presence: true
  validates :nightlife, presence: true
  validates :pet_friendly, presence: true
  validates :restaurants_qty, presence: true
  validates :shopping, presence: true
  validates :metro, presence: true
  validates :bike, presence: true
  validates :bus, presence: true
  validates :uber, presence: true
  validates :dealer, presence: true
end
