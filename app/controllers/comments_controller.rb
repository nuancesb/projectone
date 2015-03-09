class CommentsController < ApplicationController

  def create
  @song = Song.find(params[:song_id])
  @comment = @song.comments.new(comment_params)
  @comment.user = current_user
  @comment.save
  redirect_to @song
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end

end