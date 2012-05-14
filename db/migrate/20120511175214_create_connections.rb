class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :entity_id
      t.integer :friend_id
      t.integer :contype_id
      t.string :comment

      t.timestamps
    end
  end
end
