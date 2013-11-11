class CreatePracs < ActiveRecord::Migration
  def self.up
    create_table :pracs do |t|
      t.string :name
      t.integer :ailment_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pracs
  end
end
