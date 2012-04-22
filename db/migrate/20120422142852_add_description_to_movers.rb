class AddDescriptionToMovers < ActiveRecord::Migration
  def change
    add_column :movers, :description, :string

  end
end
