class PostsController < ApplicationController
  def index #トップページ 
    @i = "iii"
  end

  def new #トップページのform_withに繋がる
    @post = "newページ"
  end

  private
  def post_params
    # params.require(:post).permit(:name, :use_ids [])
  end
end
