class AddRatingToMover < ActiveRecord::Migration
  def change
    add_column :movers, :rating, :integer
  end
end
