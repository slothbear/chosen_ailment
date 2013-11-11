class AddCategoryToPracs < ActiveRecord::Migration
  def self.up
    add_column :pracs, :category, :string
  end

  def self.down
    remove_column :pracs, :category
  end
end
