class AddDescriptionToMoveRequests < ActiveRecord::Migration
  def change
    add_column :move_requests, :description, :text

  end
end
