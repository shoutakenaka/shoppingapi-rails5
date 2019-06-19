class Items::ImagesController < ApplicationController
  def show
    item = Item.find(params[:item_id])
    render body: item.image.download, content_type: item.image.content_type
  end
end
