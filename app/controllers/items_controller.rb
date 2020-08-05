class ItemsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :move_to_index, except: :index

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

  

  private
  def item_params
    params.require(:item).permit(:title, :text, :image, :price, :genre_id, :condition_id,:deliveryfee_id, :prefecture_id, :scheduleddelivery_id).merge(itemstatus_id: 1)
  end


  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end