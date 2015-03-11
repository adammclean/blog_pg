class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	
  #We can make this available in view by passing as symbol in helper method
  helper_method :current_user

	private
  #Find by sessions user id but only if there is one 
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
end
