class ItemsController < ApplicationController

  def index
    @spirit = Post.all.sum(:spirit).to_i
    @technique = Post.all.sum(:technique).to_i
    @body = Post.all.sum(:body).to_i
    @sum = @spirit + @technique + @body
    @user = current_user.id
  end

  def create
    @items = Item.new(item_params)
    if @items.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :explanation, :status, :count).merge(user_id: current_user.id)
  end
  
end
