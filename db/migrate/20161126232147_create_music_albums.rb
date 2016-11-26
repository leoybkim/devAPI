class CreateMusicAlbums < ActiveRecord::Migration
  def change
    create_table :music_albums do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.string :image
      t.string :thumbnail_image

      t.timestamps null: false
    end
  end
end
