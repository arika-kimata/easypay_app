class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :user_parameters, if: :devise_controller?

  private

  def user_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end