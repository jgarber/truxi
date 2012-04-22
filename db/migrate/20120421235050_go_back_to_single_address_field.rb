class GoBackToSingleAddressField < ActiveRecord::Migration
  def change
    remove_column :locations, :street_address, :string

    remove_column :locations, :city, :string

    remove_column :locations, :state, :string

    remove_column :locations, :zip, :string

  end
end
