class PostsController < ApplicationController
  before_action :post_auth, only:[:destroy]

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
    params.require(:post).permit(:title, :content, :url, :user_id)
  end
  def post_auth
    @post = Post.find(params[:id])
    @post_current_user = current_user.posts.find_by(id: params[:id])
    @post = current_user.posts.find_by(id: params[:id])
    if @post != @post_current_user
      flash[:notice] = 'Cette publication ne vous appartient pas! Vous ne pouvez la supprimer.'
    redirect_to posts_path
    end
  end

end
