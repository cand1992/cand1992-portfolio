class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def set_user
  	@user = current_user if user_signed_in?
  end

end
