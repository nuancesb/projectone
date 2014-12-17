class CommentsController < ApplicationController


  def index
  end


  def show
    @comments = @song.comments.all
    respond_with(@song)
  end

  def create

  @article = Article.find(params[:id])
  @user_who_commented = @current_user
  @comment = Comment.build_from( @article, @user_who_commented.id, "Hey guys this is my comment!" )
end




private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:song).permit(:user_id, :title)
  end



end