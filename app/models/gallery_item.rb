class GalleryItem < ActiveRecord::Base
  ## TODO: Validate File Format
  validates_presence_of :fileName, :title
end
