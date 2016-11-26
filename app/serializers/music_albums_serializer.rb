class MusicAlbumsSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :url, :image, :thumbnail_image
end
