class Threat < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
  has_and_belongs_to_many :heroes
end
