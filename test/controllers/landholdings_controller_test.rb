require 'test_helper'

class LandholdingsControllerTest < ActionController::TestCase
  setup do
    @landholding = landholdings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landholdings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landholding" do
    assert_difference('Landholding.count') do
      post :create, landholding: { university_id: @landholding.university_id }
    end

    assert_redirected_to landholding_path(assigns(:landholding))
  end

  test "should show landholding" do
    get :show, id: @landholding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landholding
    assert_response :success
  end

  test "should update landholding" do
    patch :update, id: @landholding, landholding: { university_id: @landholding.university_id }
    assert_redirected_to landholding_path(assigns(:landholding))
  end

  test "should destroy landholding" do
    assert_difference('Landholding.count', -1) do
      delete :destroy, id: @landholding
    end

    assert_redirected_to landholdings_path
  end
end
