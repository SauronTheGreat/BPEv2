class CreateBhkConfigs < ActiveRecord::Migration
  def change
    create_table :bhk_configs do |t|
      t.integer :bhk_id
      t.integer :flat_id

      t.timestamps
    end
  end
end
