class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.text :thumb_image
      t.string :title

      t.timestamps
    end
  end
end
