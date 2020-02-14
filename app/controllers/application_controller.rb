class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!
  
  # set the session to the authenticated user's id
  def login!
      session[:user_id] = @user.id
  end

  # query whether there is a session with this user's id
  def logged_in?
      !!session[:user_id]
  end

  # return the user object of the user id in the current cookie 
  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # check if user matches our session's user obj
  def authorized_user?
      @user == current_user
  end

  # clear our session cookie
  def logout!
      session.clear
  end
end