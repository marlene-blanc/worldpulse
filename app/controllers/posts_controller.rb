class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def show
    @post = Post.find(params[:id])
    @new_comment = Comment.new
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to posts_path, notice: "Publication créée avec succès."
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "Publication supprimée avec succès."
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :url)
  end

end
