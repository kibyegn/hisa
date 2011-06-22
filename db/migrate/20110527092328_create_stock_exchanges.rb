class CreateStockExchanges < ActiveRecord::Migration
  def self.up
    create_table :stock_exchanges do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :stock_exchanges
  end
end
