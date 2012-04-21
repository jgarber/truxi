class ChangeAddressFieldsOnUsers < ActiveRecord::Migration
  def change
    remove_column :movers, :address
    add_column :movers, :street_address, :string
    add_column :movers, :city, :string
    add_column :movers, :state, :string
    add_column :movers, :zip, :string
  end
end
