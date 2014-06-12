class AddAttributeToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :numcode, :string
  end
end
