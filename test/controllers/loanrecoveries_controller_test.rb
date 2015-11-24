require 'test_helper'

class LoanrecoveriesControllerTest < ActionController::TestCase
  setup do
    @loanrecovery = loanrecoveries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loanrecoveries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loanrecovery" do
    assert_difference('Loanrecovery.count') do
      post :create, loanrecovery: { address: @loanrecovery.address, email: @loanrecovery.email, name: @loanrecovery.name, phone: @loanrecovery.phone }
    end

    assert_redirected_to loanrecovery_path(assigns(:loanrecovery))
  end

  test "should show loanrecovery" do
    get :show, id: @loanrecovery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loanrecovery
    assert_response :success
  end

  test "should update loanrecovery" do
    patch :update, id: @loanrecovery, loanrecovery: { address: @loanrecovery.address, email: @loanrecovery.email, name: @loanrecovery.name, phone: @loanrecovery.phone }
    assert_redirected_to loanrecovery_path(assigns(:loanrecovery))
  end

  test "should destroy loanrecovery" do
    assert_difference('Loanrecovery.count', -1) do
      delete :destroy, id: @loanrecovery
    end

    assert_redirected_to loanrecoveries_path
  end
end
