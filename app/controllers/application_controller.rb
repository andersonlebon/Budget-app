# frozen_string_literal: true

class ApplicationController < ActionController::Base
  #, :except 
  private
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to root_path, notice: "Please Login to view that page!" if request.original_fullpath != root_path
    end
  end
end
