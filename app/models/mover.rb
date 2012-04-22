class Mover < ActiveRecord::Base
  belongs_to :user
  validates :user, :street_address, :city, :state, :zip, presence: true
  accepts_nested_attributes_for :user

  acts_as_gmappable
  geocoded_by :street_address

  def miles_away_from(object)
    return unless object && object.latitude && object.longitude
    sprintf "%.1f", self.distance_from([object.latitude, object.longitude])
  end

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{street_address}\n #{city}, #{state} #{zip}" 
  end
end
