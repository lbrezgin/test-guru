class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_tests_path
    else
      root_path
    end
  end

  def default_url_options
    lang_param = I18n.locale.to_s.downcase
    default_lang_param = I18n.default_locale.to_s.downcase

    lang_param != default_lang_param ? { lang: lang_param } : {}
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :first_name, :last_name])
  end

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end
end
