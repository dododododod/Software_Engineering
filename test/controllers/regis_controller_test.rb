require 'test_helper'

class RegisControllerTest < ActionController::TestCase
  setup do
    @regi = regis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regi" do
    assert_difference('Regi.count') do
      post :create, regi: { address: @regi.address, deposit: @regi.deposit, description: @regi.description, housetype: @regi.housetype, managementfee: @regi.managementfee, monthlyfee: @regi.monthlyfee, phone: @regi.phone, picture: @regi.picture, title: @regi.title }
    end

    assert_redirected_to regi_path(assigns(:regi))
  end

  test "should show regi" do
    get :show, id: @regi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regi
    assert_response :success
  end

  test "should update regi" do
    patch :update, id: @regi, regi: { address: @regi.address, deposit: @regi.deposit, description: @regi.description, housetype: @regi.housetype, managementfee: @regi.managementfee, monthlyfee: @regi.monthlyfee, phone: @regi.phone, picture: @regi.picture, title: @regi.title }
    assert_redirected_to regi_path(assigns(:regi))
  end

  test "should destroy regi" do
    assert_difference('Regi.count', -1) do
      delete :destroy, id: @regi
    end

    assert_redirected_to regis_path
  end
end
