class CommentsController < ApplicationController



  def index
    @comments = Comments.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new

    @comment = Comment.new
    @comment.created_at = Time.now
    @post = Post.find(params[:post_id])
  end

  def create

    @new_comment = Comment.new(comment_params)
    @new_comment.user_id = current_user.id
    @post = Post.find(params[:post_id])
    @new_comment.post = @post
    @new_comment.save
    redirect_to post_path(@post), notice: "Votre commentaire a été correctement créé."

  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path, notice: "Votre commentaire a été correctement supprimé."
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end



end
