class GalleryController < ApplicationController
  def index
    @gallery_items = GalleryItem.order(created_at: :desc).all
  end

  def look
    @gallery_item = GalleryItem.find(params.permit(:galleryItem))
  end
end
