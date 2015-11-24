require 'test_helper'

class RecoveredsControllerTest < ActionController::TestCase
  setup do
    @recovered = recovereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recovereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recovered" do
    assert_difference('Recovered.count') do
      post :create, recovered: { recovered_amount: @recovered.recovered_amount, recovery_charges: @recovered.recovery_charges, recovery_time: @recovered.recovery_time }
    end

    assert_redirected_to recovered_path(assigns(:recovered))
  end

  test "should show recovered" do
    get :show, id: @recovered
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recovered
    assert_response :success
  end

  test "should update recovered" do
    patch :update, id: @recovered, recovered: { recovered_amount: @recovered.recovered_amount, recovery_charges: @recovered.recovery_charges, recovery_time: @recovered.recovery_time }
    assert_redirected_to recovered_path(assigns(:recovered))
  end

  test "should destroy recovered" do
    assert_difference('Recovered.count', -1) do
      delete :destroy, id: @recovered
    end

    assert_redirected_to recovereds_path
  end
end
