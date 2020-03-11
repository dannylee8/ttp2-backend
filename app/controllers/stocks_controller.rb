class StocksController < ApplicationController

  # create a new stock or patch a stock if user id already has that symbol
  def create
    @stock = Stock.find_by(user_id: params[:user_id], symbol: params[:symbol])
    if @stock
      # render json: {
        #   status: :found,
        #   stock: @stock
        # }
        @stock.shares = @stock.shares + params[:shares].to_i;
        @stock.save 
        render json: {
          status: :update,
          stock: @stock
        }
    else 
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
  end

  private
    
  def stock_params
    params.require(:stock).permit(:symbol, :shares, :price, :user_id)
  end
end