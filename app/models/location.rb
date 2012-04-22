class Location < ActiveRecord::Base
  validates :address, presence:true
  acts_as_gmappable address: "address"
end
