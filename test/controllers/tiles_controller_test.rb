require 'test_helper'

class TilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tile = tiles(:one)
  end

  test "should get index" do
    get tiles_url
    assert_response :success
  end

  test "should get new" do
    get new_tile_url
    assert_response :success
  end

  test "should create tile" do
    assert_difference('Tile.count') do
      post tiles_url, params: { tile: { description: @tile.description, image: @tile.image, name: @tile.name } }
    end

    assert_redirected_to tile_url(Tile.last)
  end

  test "should show tile" do
    get tile_url(@tile)
    assert_response :success
  end

  test "should get edit" do
    get edit_tile_url(@tile)
    assert_response :success
  end

  test "should update tile" do
    patch tile_url(@tile), params: { tile: { description: @tile.description, image: @tile.image, name: @tile.name } }
    assert_redirected_to tile_url(@tile)
  end

  test "should destroy tile" do
    assert_difference('Tile.count', -1) do
      delete tile_url(@tile)
    end

    assert_redirected_to tiles_url
  end
end
