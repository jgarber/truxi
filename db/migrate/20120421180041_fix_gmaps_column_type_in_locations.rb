class FixGmapsColumnTypeInLocations < ActiveRecord::Migration
  def change
    change_column :locations, :gmaps, :boolean
  end
end
