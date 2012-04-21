class Mover < ActiveRecord::Base
  belongs_to :user
  validates :user, :street_address, :city, :state, :zip, presence: true
end
