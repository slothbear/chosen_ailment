class CreateAilments < ActiveRecord::Migration
  def self.up
    create_table :ailments do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ailments
  end
end
