class ApplicationController < ActionController::Base
 
  
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
	
	def rsvp_on_nav_bar
	if signed_in?
  @has_made_rsvp = current_user.attendings(:name).present?
  end
  end
  end

end
