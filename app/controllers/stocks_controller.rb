class StocksController < ApplicationController

  # create a stock 
  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      render json: {
        status: :created,
        stock: @stock
      }
    else 
      render json: {
        status: 500,
        errors: @stock.errors.full_messages
      }
    end
  end

  private
    
  def stock_params
    params.require(:stock).permit(:symbol, :shares, :price, :user_id)
  end
end