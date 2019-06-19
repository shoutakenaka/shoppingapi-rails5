class ItemsController < ApplicationController
  before_action :ensure_user_is_admin, only: %i(create update destroy)
  before_action :set_base_url

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create!(
      name: params[:name],
      description: params[:description],
      unit_price: params[:unit_price])
  end

  def update
    @item = Item.find(params[:id])
    @item.update!({
      name: params[:name],
      description: params[:description],
      unit_price: params[:unit_price]
    })
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy!
    render json: {}
  end
  
  private
  
  def set_base_url
    @base_url = request.url
  end
end
