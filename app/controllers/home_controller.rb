class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @comments = Comment.recent.limit(10).all
  end
end