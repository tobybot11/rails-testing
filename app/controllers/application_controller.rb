class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :redirect_url

  def redirect_url
    return new_user_session_path unless user_signed_in?
    root_path
  end
    
end
