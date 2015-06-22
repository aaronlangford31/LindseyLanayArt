class GalleryController < ApplicationController
  def index
    @gallery_items = GalleryItem.order(created_at: :desc).all
  end
end
