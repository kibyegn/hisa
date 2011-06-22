class CreateStockPrices < ActiveRecord::Migration
  def self.up
    create_table :stock_prices do |t|
      t.integer :stock_id
      t.decimal :price
      t.decimal :volume

      t.timestamps
    end
  end

  def self.down
    drop_table :stock_prices
  end
end
