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
  
  def show
    @stock_exchange = StockExchange.find(params[:id])
    @exchange_listings = @stock_exchange.stocks
  end

end
