class CreateOccurences < ActiveRecord::Migration
  def self.up
    create_table :occurences do |t|
      t.references :task
      t.text :ice_cube_yaml

      t.timestamps
    end
  end

  def self.down
    drop_table :occurences
  end
end
