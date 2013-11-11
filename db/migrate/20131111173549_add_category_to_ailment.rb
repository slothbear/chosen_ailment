class AddCategoryToAilment < ActiveRecord::Migration
  def self.up
    add_column :ailments, :category, :string
  end

  def self.down
    remove_column :ailments, :category
  end
end
