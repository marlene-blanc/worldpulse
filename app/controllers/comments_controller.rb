class CommentsController < ApplicationController

  def index
    @comments = Comments.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new

    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @post = Post.find(params[:post_id])
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post), notice: "Votre commentaire a été correctement créé."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post), notice: "Votre commentaire a été correctement supprimé."
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
