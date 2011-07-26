class StocksController < ApplicationController
  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(params[:stock])
    if @stock.save
      flash[:notice] = "Successfully created stock."
      redirect_to @stock
    else
      render :action => 'new'
    end
  end
  
  def edit
    @stock = Stock.find(params[:id])
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    flash[:notice] = "Successfully deleted stock."
    redirect_to root_path
  end

end
