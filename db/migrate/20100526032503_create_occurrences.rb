class CreateOccurrences < ActiveRecord::Migration
  def self.up
    create_table :occurrences do |t|
      t.references :task
      t.text :ice_cube_yaml

      t.timestamps
    end
  end

  def self.down
    drop_table :occurrences
  end
end
