class AddIsosToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :iso, :string
    add_column :countries, :iso3, :string
  end
end
