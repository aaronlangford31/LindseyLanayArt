class GalleryController < ApplicationController
  def index
    @galleryItems = GalleryItem.all
  end
end
