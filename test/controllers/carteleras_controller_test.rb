require 'test_helper'

class CartelerasControllerTest < ActionController::TestCase
  setup do
    @cartelera = carteleras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carteleras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartelera" do
    assert_difference('Cartelera.count') do
      post :create, cartelera: { nombre: @cartelera.nombre, raiting: @cartelera.raiting }
    end

    assert_redirected_to cartelera_path(assigns(:cartelera))
  end

  test "should show cartelera" do
    get :show, id: @cartelera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartelera
    assert_response :success
  end

  test "should update cartelera" do
    patch :update, id: @cartelera, cartelera: { nombre: @cartelera.nombre, raiting: @cartelera.raiting }
    assert_redirected_to cartelera_path(assigns(:cartelera))
  end

  test "should destroy cartelera" do
    assert_difference('Cartelera.count', -1) do
      delete :destroy, id: @cartelera
    end

    assert_redirected_to carteleras_path
  end
end
