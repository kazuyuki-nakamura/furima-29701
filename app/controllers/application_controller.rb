class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :dvise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:nickname,:email,:password,:encrypted_password,:first_name,:last_name,:first_name_kana,:last_name_kana,:birth_day ])
  end
end
