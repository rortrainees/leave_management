require 'test_helper'

class RestsControllerTest < ActionController::TestCase
  setup do
    @rest = rests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rest" do
    assert_difference('Rest.count') do
      post :create, rest: { employe_id: @rest.employe_id, leave_from: @rest.leave_from, leave_to: @rest.leave_to, resone: @rest.resone }
    end

    assert_redirected_to rest_path(assigns(:rest))
  end

  test "should show rest" do
    get :show, id: @rest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rest
    assert_response :success
  end

  test "should update rest" do
    patch :update, id: @rest, rest: { employe_id: @rest.employe_id, leave_from: @rest.leave_from, leave_to: @rest.leave_to, resone: @rest.resone }
    assert_redirected_to rest_path(assigns(:rest))
  end

  test "should destroy rest" do
    assert_difference('Rest.count', -1) do
      delete :destroy, id: @rest
    end

    assert_redirected_to rests_path
  end
end
