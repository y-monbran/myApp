class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]

  def index 
    @posts = Post.all.order(created_at: 'desc').limit(4)
  end
  
  def new
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path
    else
      render :edit
    end
  end

  def graph
    @spirit = Post.all.sum(:spirit).to_i
    @technique = Post.all.sum(:technique).to_i
    @body = Post.all.sum(:body).to_i
    @sum = @spirit + @technique + @body
  end

  private

  def post_params
    params.require(:post).permit(:spirit, :technique, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
