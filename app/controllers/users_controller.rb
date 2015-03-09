class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def artists
    @users = User.where role: "artist"
    render 'index'
  end

  def fans
    @users = User.where role: "fan"
    render 'index'
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user.update(user_params)
    respond_with(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # respond_with(@user)
    redirect_to(users_path)
  end

 
  def user_params
    params.require(:user).permit(:name, :user_image, :remote_user_image_url)
  end
end