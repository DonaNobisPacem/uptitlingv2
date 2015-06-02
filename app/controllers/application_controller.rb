class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_university_list
	before_action :configure_permitted_parameters, if: :devise_controller?
  	
  	def set_university_list
  		@university_list = University.paginate(:page => params[:page], :per_page => 30)
  	end

	protected

  	def configure_permitted_parameters
    	devise_parameter_sanitizer.for(:account_update) << :first_name
    	devise_parameter_sanitizer.for(:account_update) << :last_name
  	end
end
