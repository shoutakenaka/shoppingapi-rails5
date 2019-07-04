class ItemsController < ApplicationController
  before_action :ensure_user_is_admin, only: %i(create update destroy)
  before_action :set_base_url

  def index
    load_items
  end

  def show
    ActiveRecord::Base.transaction do
      @item = Item.find(params[:id])
      record_browsing_history
    end
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

  def load_items
    q = Item.all
    if params[:category_id]
      q = q.where(category_id: params[:category_id].to_i)
    end
    if params[:q]
      pattern = "%#{params[:q]}%"
      q = q.where('(name LIKE ?) OR (description LIKE ?)', pattern, pattern)
    end
    @items = q
  end

  def record_browsing_history
    history = BrowsingHistory.find_or_initialize_by(item: @item, user: current_user)
    history.touch unless history.new_record?
    history.save!
  end
  
  def set_base_url
    @base_url = request.base_url + request.path
  end
end
