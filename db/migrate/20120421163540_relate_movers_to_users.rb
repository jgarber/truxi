class RelateMoversToUsers < ActiveRecord::Migration
  def change
    remove_column :movers, :name
    remove_column :movers, :email
    remove_column :movers, :mobile_phone
    add_column :movers, :user_id, :integer
    add_column :users, :mobile_phone, :string
  end
end
