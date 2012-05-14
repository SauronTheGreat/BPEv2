class CreateContypes < ActiveRecord::Migration
  def change
    create_table :contypes do |t|
      t.string :name
      t.boolean :entity_is_contact
      t.boolean :friend_is_contact

      t.timestamps
    end
  end
end
