class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def artists
    # @users = User.find_by role: "artist" 
  end

  def fans
    # @users = User.find_by role: "user" 
  end

  # Strong params here (if you add a form)

end