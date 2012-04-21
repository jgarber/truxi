class MoveRequest < ActiveRecord::Base
  belongs_to :origin, class_name: 'Location', dependent: :destroy
  belongs_to :destination, class_name: 'Location', dependent: :destroy
  accepts_nested_attributes_for :origin, :destination

  validates :origin, :destination, :date, presence: true
end
