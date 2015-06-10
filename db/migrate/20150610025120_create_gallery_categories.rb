class CreateGalleryCategories < ActiveRecord::Migration
  def change
    create_table :gallery_categories do |t|
      t.string :categoryName, null: false

      t.timestamps null: false
    end
  end
end
