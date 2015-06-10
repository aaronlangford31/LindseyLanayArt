class CreateGalleryItems < ActiveRecord::Migration
  def change
    create_table :gallery_items do |t|
      t.string :fileName, null: false
      t.string :title, null: false
      t.string :altText
      t.integer :categoryID

      t.timestamps null: false
    end
  end
end
