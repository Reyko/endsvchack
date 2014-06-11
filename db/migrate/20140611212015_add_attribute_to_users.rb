class AddAttributeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :training, :string
  end
end
