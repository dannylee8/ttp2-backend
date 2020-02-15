class SessionsController < ApplicationController

  # create a user session, find user by email and authenticate password
  # if ok, login! (applicationController)
  def create
    @user = User.find_by(email: session_params[:email])
  
    if @user && @user.authenticate(session_params[:password])
      login!
      render json: {
        logged_in: true,
        user: @user
      }
    else
      render json: { 
        status: 401,
        errors: ['Authentication Failed!', 'Please try again.']
      }
    end
  end
  
  # if they are already logged_in? (applicationController) then render current_user object
  def is_logged_in?
    if logged_in? && current_user
      render json: {
        logged_in: true,
        user: current_user
      }
    else
      render json: {
        logged_in: false,
        message: 'Login failed.  No such user.'
      }
    end
  end

  #logout! (applicationController) and delete session
  def destroy
    logout!
    render json: {
      status: 200,
      logged_out: true
    }
  end

  private

  def session_params
      params.require(:user).permit(:username, :email, :password)
  end

end