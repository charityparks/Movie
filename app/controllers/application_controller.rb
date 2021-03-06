class ApplicationController < ActionController::Base

  def current_user
    User.find_by(id: session[:user_id])
  end

  def require_login
    redirect_to movies_path unless logged_in?
  end

  def logged_in?
    !!current_user
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def user_authorized?
    @actor.user && @actor.user.id == current_user.id
  end

  def validate_actor
    redirect_to actors_path if !@actor
  end

end
