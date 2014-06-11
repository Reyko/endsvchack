class CreateNgos < ActiveRecord::Migration
  def change
    create_table :ngos do |t|

      t.timestamps
    end
  end
end
