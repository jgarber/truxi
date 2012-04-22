class Location < ActiveRecord::Base
  validates :address, presence:true
  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable address: "address", process_geocoding: false
end
