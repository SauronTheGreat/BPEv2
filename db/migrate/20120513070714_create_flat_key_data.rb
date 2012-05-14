class CreateFlatKeyData < ActiveRecord::Migration
  def change
    create_table :flat_key_data do |t|
      t.integer :flat_id
      t.integer :rent
      t.integer :furnstat_id
      t.date :available_from
      t.string :num
      t.string :url
      t.integer :source_id
      t.integer :floor_area

      t.timestamps
    end
  end
end
