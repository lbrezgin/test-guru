class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      if session[:return_to].present?
        redirect_to session[:return_to]
      end
    else
      flash_helper
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end


