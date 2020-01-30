class UsersController < ApplicationController
  include SessionsHelper
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]


  def index
   @users = User.paginate(page: params[:page], per_page: 6)
  end

  def new
  @user = User.new
  end

  def show
  	#@user = User.new(user_params)
  end

  def create
	@user = User.new(user_params)
		if @user.save
      log_in @user
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
		else
			render 'new'
		end
  end

  def edit
  #@user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "User update"
      redirect_to edit_user_url(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_url
    flash[:danger] = 'Deleted'

  end

end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to sessions_new_url
  end

  def correct_user
   @user = User.find(params[:id])
   redirect_to(root_url) unless @user == current_user
  end

end