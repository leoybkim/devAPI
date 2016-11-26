class MusicAlbumsController < ApplicationController
  before_action :set_music_album, only: [:show, :update, :destroy]

  # GET /music_albums
  # GET /music_albums.json
  def index
    @music_albums = MusicAlbum.all

    render json: @music_albums
  end

  # GET /music_albums/1
  # GET /music_albums/1.json
  def show
    render json: @music_album
  end

  # POST /music_albums
  # POST /music_albums.json
  def create
    @music_album = MusicAlbum.new(music_album_params)

    if @music_album.save
      render json: @music_album, status: :created, location: @music_album
    else
      render json: @music_album.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /music_albums/1
  # PATCH/PUT /music_albums/1.json
  def update
    @music_album = MusicAlbum.find(params[:id])

    if @music_album.update(music_album_params)
      head :no_content
    else
      render json: @music_album.errors, status: :unprocessable_entity
    end
  end

  # DELETE /music_albums/1
  # DELETE /music_albums/1.json
  def destroy
    @music_album.destroy

    head :no_content
  end

  private

    def set_music_album
      @music_album = MusicAlbum.find(params[:id])
    end

    def music_album_params
      params.require(:music_album).permit(:title, :artist, :url, :image, :thumbnail_image)
    end
end
