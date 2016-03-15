require 'test_helper'

class StudioClientsControllerTest < ActionController::TestCase
  setup do
    @studio_client = studio_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studio_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studio_client" do
    assert_difference('StudioClient.count') do
      post :create, studio_client: { album: @studio_client.album, artist: @studio_client.artist, image: @studio_client.image, role: @studio_client.role }
    end

    assert_redirected_to studio_client_path(assigns(:studio_client))
  end

  test "should show studio_client" do
    get :show, id: @studio_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studio_client
    assert_response :success
  end

  test "should update studio_client" do
    patch :update, id: @studio_client, studio_client: { album: @studio_client.album, artist: @studio_client.artist, image: @studio_client.image, role: @studio_client.role }
    assert_redirected_to studio_client_path(assigns(:studio_client))
  end

  test "should destroy studio_client" do
    assert_difference('StudioClient.count', -1) do
      delete :destroy, id: @studio_client
    end

    assert_redirected_to studio_clients_path
  end
end
