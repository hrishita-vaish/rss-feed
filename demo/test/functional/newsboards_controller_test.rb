require 'test_helper'

class NewsboardsControllerTest < ActionController::TestCase
  setup do
    @newsboard = newsboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsboard" do
    assert_difference('Newsboard.count') do
      post :create, newsboard: @newsboard.attributes
    end

    assert_redirected_to newsboard_path(assigns(:newsboard))
  end

  test "should show newsboard" do
    get :show, id: @newsboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsboard
    assert_response :success
  end

  test "should update newsboard" do
    put :update, id: @newsboard, newsboard: @newsboard.attributes
    assert_redirected_to newsboard_path(assigns(:newsboard))
  end

  test "should destroy newsboard" do
    assert_difference('Newsboard.count', -1) do
      delete :destroy, id: @newsboard
    end

    assert_redirected_to newsboards_path
  end
end
