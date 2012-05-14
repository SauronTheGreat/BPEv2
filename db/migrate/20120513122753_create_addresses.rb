class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :road
      t.integer :pincode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
