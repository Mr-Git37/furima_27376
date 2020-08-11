class OrdersController < ApplicationController
  before_action :set_item, only: [:index, :create]
  before_action :index_order, only: :index
  before_action :index_order2, only: :index


  def index
    @order = Order.new
  end

  def new
    @address = UserItem.new

  end

  def create
    @address = UserItem.new(order_params)
    if @address.valid?
      item = Item.find(params[:item_id])
      item.update(itemstatus_id: "0")
      pay_item
      @address.save
      return redirect_to root_path
    else
      render 'index'
    end    
  end


  private
  def order_params
    params.permit(:item_id,:postalcode, :prefecture_id, :city, :number, :buildingname, :phonenumber).merge(user_id: current_user.id)
  end

  def index_order
    if user_signed_in? && current_user.id == @item.user_id
        redirect_to root_path 
    end
  end

  def index_order2
    if  @item.itemstatus_id == 0
        redirect_to root_path 
  end
end

def set_item
  @item = Item.find(params[:item_id])
end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # 秘密鍵を設定
    Payjp::Charge.create(
      amount: @item.price,  # 商品の値段
      card: params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類
    )
  end
end
