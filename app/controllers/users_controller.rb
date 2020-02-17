class UsersController < ApplicationController
  
  # list all users
  def index
    @users = User.all
    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        status: 500,
        errors: ['No users in db']
      }
    end
  end

  # show single users
  def show
    @user = User.find(params[:id])
    if @user
      render json: @user
    else
      render json: {
        status: 500,
        errors: ['User not found!']
      }
    end
  end
    
  # create a user and login!(application controller) them
  def create
    @user = User.new(user_params)
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user
      }
    else 
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      render json: {
        status: :updated,
        user: @user
      }
    else 
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  private
    
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :cash)
  end
end