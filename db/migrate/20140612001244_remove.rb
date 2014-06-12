class Remove < ActiveRecord::Migration
  def change
    remove_column :users, :country
    remove_column :users,  :city
  end
end
