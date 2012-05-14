class CreateBhks < ActiveRecord::Migration
  def change
    create_table :bhks do |t|
      t.string :name

      t.timestamps
    end
  end
end
