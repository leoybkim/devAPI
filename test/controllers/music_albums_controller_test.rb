require 'test_helper'

class MusicAlbumsControllerTest < ActionController::TestCase
  setup do
    @music_album = music_albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_albums)
  end

  test "should create music_album" do
    assert_difference('MusicAlbum.count') do
      post :create, music_album: { artist: @music_album.artist, image: @music_album.image, thumbnail_image: @music_album.thumbnail_image, title: @music_album.title, url: @music_album.url }
    end

    assert_response 201
  end

  test "should show music_album" do
    get :show, id: @music_album
    assert_response :success
  end

  test "should update music_album" do
    put :update, id: @music_album, music_album: { artist: @music_album.artist, image: @music_album.image, thumbnail_image: @music_album.thumbnail_image, title: @music_album.title, url: @music_album.url }
    assert_response 204
  end

  test "should destroy music_album" do
    assert_difference('MusicAlbum.count', -1) do
      delete :destroy, id: @music_album
    end

    assert_response 204
  end
end
