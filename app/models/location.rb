class Location < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ["Public Space", "Private Space"]
  PUBLIC_SUBTYPE = ["Neighborhood", "Block/Square", "Street", "Park", "Cultural Landmark", "Natural Landmark"]
  PRIVATE_SUBTYPE = ["House", "Flat", "Restaurant", "Bar", "Hotel", "Workshop", "Office"]

  validates :name, presence: true
  # validates :address, presence: true
  # validates :city, presence: true
  validates :neighborhood, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :subcategory, inclusion: { in: PUBLIC_SUBTYPE }, if: :public_space?
  validates :subcategory, inclusion: { in: PRIVATE_SUBTYPE }, if: :private_space?

  def public_space?
    category == "Public Space"
  end

  def private_space?
    category == "Private Space"
  end

  def full_address
    [address, neighborhood, city].compact.join(', ')
  end

  # PG search method to look in one model

  include PgSearch::Model

  pg_search_scope :search_by_city_and_neighborhood,
    against: [ :city, :neighborhood ],
    using: {
      tsearch: { prefix: true }
    }
end
