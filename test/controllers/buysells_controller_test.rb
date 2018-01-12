require 'test_helper'

class BuysellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buysell = buysells(:one)
  end

  test "should get index" do
    get buysells_url
    assert_response :success
  end

  test "should get new" do
    get new_buysell_url
    assert_response :success
  end

  test "should create buysell" do
    assert_difference('Buysell.count') do
      post buysells_url, params: { buysell: { coche_id: @buysell.coche_id, comprador_id: @buysell.comprador_id, fecha_compra: @buysell.fecha_compra, fecha_publicacion: @buysell.fecha_publicacion, precio: @buysell.precio, vendedor_id: @buysell.vendedor_id } }
    end

    assert_redirected_to buysell_url(Buysell.last)
  end

  test "should show buysell" do
    get buysell_url(@buysell)
    assert_response :success
  end

  test "should get edit" do
    get edit_buysell_url(@buysell)
    assert_response :success
  end

  test "should update buysell" do
    patch buysell_url(@buysell), params: { buysell: { coche_id: @buysell.coche_id, comprador_id: @buysell.comprador_id, fecha_compra: @buysell.fecha_compra, fecha_publicacion: @buysell.fecha_publicacion, precio: @buysell.precio, vendedor_id: @buysell.vendedor_id } }
    assert_redirected_to buysell_url(@buysell)
  end

  test "should destroy buysell" do
    assert_difference('Buysell.count', -1) do
      delete buysell_url(@buysell)
    end

    assert_redirected_to buysells_url
  end
end
