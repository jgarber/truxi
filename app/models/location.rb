class Location < ActiveRecord::Base
  validates :street_address, :city, :state, presence:true
  acts_as_gmappable

  def gmaps4rails_address
    [self.street_address, self.city, self.state, self.zip].join(" ")
  end
end
