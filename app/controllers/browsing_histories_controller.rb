class BrowsingHistoriesController < ApplicationController
  before_action :set_base_url

  def index
    limit = params[:limit].present? ? [[params[:limit].to_i, 1].max, 9].min : 5
    @browsing_histories = current_user.browsing_histories.includes(:item).order(updated_at: :desc).limit(limit)
  end
  
  private

  def set_base_url
    @base_url = request.url
  end
end
