class PostsController < ApplicationController
  def index #トップページ 
    
  end

  def new #入力ページ
    @post = Post.new

  end

  def create #グラフページ
    @posts = Post.all
    Post.create(spirit: params[:spirit])
    Post.create(technique: params[:technique])
    Post.create(body: params[:body])
  end

  private
  def post_params
    # params.require(:post).permit(:name, :use_ids [])
  end
end
