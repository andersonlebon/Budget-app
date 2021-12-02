# frozen_string_literal: true

class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?

 
  #, :except 
  private
   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password])
  end

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to root_path, notice: "Please Login to view that page!" if request.original_fullpath != root_path
    end
  end
end
