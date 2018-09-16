class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  # GET /feeds/:feed_id/items
  # GET /feeds/:feed_id/items.json
  def index
    @feed = Feed.find(params[:feed_id])
    @items = @feed.items
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:title, :url, :published_at, :feed_id)
    end
end
