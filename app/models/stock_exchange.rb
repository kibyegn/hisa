class StockExchange < ActiveRecord::Base
=begin
create_table "stock_exchanges", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
=end
  has_many :stocks
  validates :name, :uniqueness => true
end
