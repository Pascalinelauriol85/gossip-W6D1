class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  include SessionsHelper

  private 

  def authenticate_user
    unless current_user
      flash[:danger] = "Il te faut se connecter!"
      redirect_to new_session_path
    end
  end

end
