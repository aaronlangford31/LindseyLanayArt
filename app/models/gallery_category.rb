class GalleryCategory < ActiveRecord::Base
  validates_presence_of :categoryName
end
