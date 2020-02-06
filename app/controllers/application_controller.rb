class ApplicationController < ActionController::Base
	include SessionsHelper

 def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to sessions_new_url
 end
end

end
