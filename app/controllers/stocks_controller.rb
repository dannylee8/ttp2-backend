class StocksController < ApplicationController

  # create a user and login!(application controller) them
  def create
    @stock = Stock.new(user_params)
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
    
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :cash)
  end
end