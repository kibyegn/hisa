class AddCategoryToStocks < ActiveRecord::Migration
  def self.up
    add_column :stocks, :category_id, :string
    add_column :stocks, :notes, :string
  end

  def self.down
    remove_column :stocks, :category_id
    remove_column :stocks, :notes
  end
end
