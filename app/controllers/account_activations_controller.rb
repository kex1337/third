class AccountActivationsController < ApplicationController
  include SessionsHelper
  def edit
    user = User.find_by(email: params[:email])
    
    if user  && !user.activated? && user.authenticated?(:activation, params[:id])
    
      user.update(activated: true, activated_at: Time.now)
      
      user.activate
      
      log_in user
     
      flash[:success] = "Welcome"
      redirect_to root_url
    else
      flash[:success] = "Already activated"
      redirect_to root_url
    end
  end

end
