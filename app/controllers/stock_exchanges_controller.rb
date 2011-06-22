class StockExchangesController < ApplicationController
  def index
    @stock_exchanges = StockExchange.all
  end

  def new
    @stock_exchange = StockExchange.new
    
    respond_to do |format|
    	format.html
    end
  end
  
  def create
    
  end

  def destroy
  end

end
