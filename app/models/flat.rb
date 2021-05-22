class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :latitude, presence: true
  validates :longitude, presence: true
end
