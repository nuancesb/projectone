class CommentsController < ApplicationController


  # def index
  # end


  # def show
  #   @comments = @song.comments.all
  #   respond_with(@song)
  # end

  def create

  @song = Song.find(params[:song_id])
  @comment = @song.comments.new(comment_params)
  @comment.user = current_user
  @comment.save
  redirect_to @song
  end




# private
#   def set_comment
#     @comment = Comment.find(params[:id])
#   end

  def comment_params
    params.require(:comment).permit(:comment)
  end



end