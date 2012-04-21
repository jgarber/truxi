class CreateMovers < ActiveRecord::Migration
  def change
    create_table :movers do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.text :address
      t.float :range
      t.text :availability
      t.decimal :hourly_rate

      t.timestamps
    end
  end
end
