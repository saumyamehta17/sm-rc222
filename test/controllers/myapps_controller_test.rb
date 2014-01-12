require 'test_helper'

class MyappsControllerTest < ActionController::TestCase
  setup do
    @myapp = myapps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myapps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myapp" do
    assert_difference('Myapp.count') do
      post :create, myapp: {  }
    end

    assert_redirected_to myapp_path(assigns(:myapp))
  end

  test "should show myapp" do
    get :show, id: @myapp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myapp
    assert_response :success
  end

  test "should update myapp" do
    patch :update, id: @myapp, myapp: {  }
    assert_redirected_to myapp_path(assigns(:myapp))
  end

  test "should destroy myapp" do
    assert_difference('Myapp.count', -1) do
      delete :destroy, id: @myapp
    end

    assert_redirected_to myapps_path
  end
end
