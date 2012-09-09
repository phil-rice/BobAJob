require 'test_helper'

class PuntersControllerTest < ActionController::TestCase
  setup do
    @punter = punters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:punters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create punter" do
    assert_difference('Punter.count') do
      post :create, punter: { address: @punter.address, email: @punter.email, name: @punter.name }
    end

    assert_redirected_to punter_path(assigns(:punter))
  end

  test "should show punter" do
    get :show, id: @punter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @punter
    assert_response :success
  end

  test "should update punter" do
    put :update, id: @punter, punter: { address: @punter.address, email: @punter.email, name: @punter.name }
    assert_redirected_to punter_path(assigns(:punter))
  end

  test "should destroy punter" do
    assert_difference('Punter.count', -1) do
      delete :destroy, id: @punter
    end

    assert_redirected_to punters_path
  end
end
