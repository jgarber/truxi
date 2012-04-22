class AddPhotoToMovers < ActiveRecord::Migration
  def change
    add_column :movers, :photo, :string

  end
end
