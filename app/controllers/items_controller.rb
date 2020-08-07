class ItemsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :move_to_index, except: [:index, :show]
  before_action :set_item, only: [:show, :edit]

  def index
    @items = Item.order('created_at DESC').limit(5)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
  end

  def edit
  end

  def update
      @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end


  private
  def item_params
    params.require(:item).permit(:title, :text, :image, :price, :genre_id, :condition_id,:deliveryfee_id, :prefecture_id, :scheduleddelivery_id)
    .merge(itemstatus_id: 1, user_id: current_user.id)
  end


  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
  def set_item
    @item = Item.find(params[:id])
  end
end
