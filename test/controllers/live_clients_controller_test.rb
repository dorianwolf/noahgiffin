require 'test_helper'

class LiveClientsControllerTest < ActionController::TestCase
  setup do
    @live_client = live_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:live_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create live_client" do
    assert_difference('LiveClient.count') do
      post :create, live_client: { artist: @live_client.artist, contact: @live_client.contact, image: @live_client.image }
    end

    assert_redirected_to live_client_path(assigns(:live_client))
  end

  test "should show live_client" do
    get :show, id: @live_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @live_client
    assert_response :success
  end

  test "should update live_client" do
    patch :update, id: @live_client, live_client: { artist: @live_client.artist, contact: @live_client.contact, image: @live_client.image }
    assert_redirected_to live_client_path(assigns(:live_client))
  end

  test "should destroy live_client" do
    assert_difference('LiveClient.count', -1) do
      delete :destroy, id: @live_client
    end

    assert_redirected_to live_clients_path
  end
end
