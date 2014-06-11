class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile, :string
    add_column :users, :skype, :string
    add_column :users, :role, :string
    add_column :users, :relevant_exp, :string
    add_column :users, :work_remote, :boolean
    add_column :users, :travel_expenses, :boolean
  end
end
