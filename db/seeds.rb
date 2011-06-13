# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
nse = StockExchange.create([{:name => 'Nairobi Stock Exchange'}])

kakuzi = Stock.create([{:name => 'Kakuzi Limited', :stock_symbol => 'KAZU', :stock_exchange_id => nse.id }])
