class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :entity_id
      t.text :content

      t.timestamps
    end
  end
end
