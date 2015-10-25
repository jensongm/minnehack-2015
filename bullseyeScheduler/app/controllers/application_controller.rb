class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_filter :authorize
	helper_method :current_user	
	# Global API key for Target
	$key = 'Id8SS1KAXuFd2W7R60XC5AUTTGKbnU2U'

	def authorize
    redirect_to '/login' unless current_user
  end

	private 

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end


end
