class ItemsController < ApplicationController
  before_action :privileged!, only: %i[create update destroy]

  def index
    items = Item.all
    render json: {
      items: items.map { |o| { id: o.id, name: o.name, unit_price: o.unit_price } }
    }
  end

  def show
    render json: Item.find(params[:id]).to_json(except: [:created_at, :updated_at])
  end

  def create
    render json: Item.create!({
      name: params[:name],
      description: params[:description],
      unit_price: params[:unit_price]
    }).to_json(except: [:created_at, :updated_at])
  end

  def update
    item = Item.find(params[:id])
    render json: item.update!({
      name: params[:name],
      description: params[:description],
      unit_price: params[:unit_price]
    }).to_json(except: [:created_at, :updated_at])
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy!
    render json: {}
  end
end
