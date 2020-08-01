class ItemsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def new
    # @item = Item.new
  end

  def create
    @item = Item.new(sign_in_params)
  end
end
