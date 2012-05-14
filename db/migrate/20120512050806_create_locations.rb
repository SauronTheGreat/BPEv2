class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :building_id
      t.integer :locality_id
      t.boolean :primary

      t.timestamps
    end
  end
end
