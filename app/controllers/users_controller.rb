class UsersController < ApplicationController

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id])
  end

  def artists
    # @users = User.find_by role: "artist" 
    # render :index
  end

  def edit
  end

  def update
    @user.update(user_params)
    respond_with(@user)
  end



  def fans
    # @users = User.find_by role: "user" 
    # render :index
  end

  # Strong params here (if you add a form)
  def user_params
    params.require(:user).permit(:name, :user_image, :remote_user_image_url)
  end
end