require 'test_helper'

class JobbersControllerTest < ActionController::TestCase
  setup do
    @jobber = jobbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobber" do
    assert_difference('Jobber.count') do
      post :create, jobber: { email: @jobber.email, name: @jobber.name, organisation: @jobber.organisation }
    end

    assert_redirected_to jobber_path(assigns(:jobber))
  end

  test "should show jobber" do
    get :show, id: @jobber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobber
    assert_response :success
  end

  test "should update jobber" do
    put :update, id: @jobber, jobber: { email: @jobber.email, name: @jobber.name, organisation: @jobber.organisation }
    assert_redirected_to jobber_path(assigns(:jobber))
  end

  test "should destroy jobber" do
    assert_difference('Jobber.count', -1) do
      delete :destroy, id: @jobber
    end

    assert_redirected_to jobbers_path
  end
end
