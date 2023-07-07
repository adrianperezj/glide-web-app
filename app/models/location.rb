class Location < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  # has_many_attached :photo

  CATEGORIES = ["Public Space", "Private Space"]
  # PUBLIC_SUBTYPE = ["Neighborhood", "Block/Square", "Street", "Park", "Cultural Landmark", "Natural Landmark"]
  # PRIVATE_SUBTYPE = ["House", "Flat", "Restaurant", "Bar", "Hotel", "Workshop", "Office"]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :neighborhood, presence: true
  validates :location_type, inclusion: { in: CATEGORIES }

end
# f.location collection: Location::CATEGORIES
# f.location collection: Location::PUBLIC_SUBTYPE
# f.location collection: Location::PRIVATE_SUBTYPE
