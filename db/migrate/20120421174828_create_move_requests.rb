class CreateMoveRequests < ActiveRecord::Migration
  def change
    create_table :move_requests do |t|
      t.integer :destination_id
      t.integer :origin_id
      t.date :date
      t.string :time_frame
      t.integer :movers_needed
      t.string :truck_size

      t.timestamps
    end
  end
end
