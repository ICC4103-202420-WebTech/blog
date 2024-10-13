class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit]
  authorize_resource
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new post_params
    if post.save
      redirect_to post
    else
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    post = Post.find params['id']
    if post.update post_params
      redirect_to posts_path
    else
      redirect_to edit_post_path(post)
    end
  end

  def destroy
    post = Post.find params['id']
    post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :body)
  end

  def set_post
    @post = Post.find params['id']
  end
end