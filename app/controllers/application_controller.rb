class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user 

  def current_user
    session[:name]
  end

  def require_login
    redirect_to '/login' unless current_user
  end
end
