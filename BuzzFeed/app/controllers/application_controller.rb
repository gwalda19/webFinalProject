class ApplicationController < ActionController::Base
  before_action :authorize

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected

    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end

    def verify_admin
      tmp_user = User.find_by(id: session[:user_id])
      #Only allow admins to access certain pages
      if not tmp_user.name.match(/^admin_/)
        redirect_to home_url, notice: 'Page Not Found!'
      end
    end

end
