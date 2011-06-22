class Stock < ActiveRecord::Base
  belongs_to :stock_exchange
  has_many :stock_prices
  belongs_to :category
end
