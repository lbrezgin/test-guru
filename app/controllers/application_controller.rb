class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?, :flash_helper, :set_path
  private

  def authenticate_user!
    unless current_user
      return redirect_to login_path, alert: "Are you a Guru? Verify your Email and Password please"
    end

    cookies[:email] = current_user.email
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def flash_helper
    flash.now[:alert] = "Are you a guru? Verify your Email and Password please"
  end

  def set_path
    unless current_user
      session[:return_to] = request.fullpath
    end
  end
end
