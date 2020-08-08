class ItemsController < ApplicationController
  before_action :set_item, only: [:show]
  # before_action :set_item

  def index
    # @items = Item.new
    # @items = Item.new(item_params)
    # @items = Item.new
    # if @items.save
    #   redirect_to action: :show
    # else
      # render :new
    # end
    # Purchase.new
    # @item = Item.find(params[:name])
    # @item1 = Item.find_by(id: 1)
    # @item2 = Item.find_by(id: 2)
    # @item3 = Item.find_by(id: 3)
    @item1 = Item.find_by(id: 1)
    @item2 = Item.find_by(id: 2)
    @item3 = Item.find_by(id: 3)
    # @user = current_user.id
    @spirit = Post.all.sum(:spirit).to_i
    @technique = Post.all.sum(:technique).to_i
    @body = Post.all.sum(:body).to_i
    @sum = @spirit + @technique + @body
    @user = current_user.id
  end

  def show
    # @purchase = Purchase.new(@item.id)
    # @purchase = Purchase.new
    # @purchase = Purchase.new(purchase_params)
    # if @purchase.save
    #   redirect_to action: :index
    # else
      # render :new
    # end
  end

  # def new
    # Purchase.new
  #   Item.new
  # end

  def create
    # @purchase = Item.find
    # Purchase.new
    # @purchase = Purchase.new
    # if @purchase.save
    #   redirect_to action: :index
    # else
    #   render :new
    # end
    # @user = User.find(params[:id])
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
  # def purchase_params
  #   params.require(:item).permit(:id)
  # end
  # def item_params
  #   params.require(:item).merge(user_id: current_user.id)
  # end

  # def purchase_params
  #   params.require(:purchase).permit(user_id: current_user.id, item_id: item.id)
  # end

  def set_item
    @item = Item.find(params[:id])
  end

end
