require 'test_helper'

class SubastaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subastum = subasta(:one)
  end

  test "should get index" do
    get subasta_url
    assert_response :success
  end

  test "should get new" do
    get new_subastum_url
    assert_response :success
  end

  test "should create subastum" do
    assert_difference('Subastum.count') do
      post subasta_url, params: { subastum: { coche_id: @subastum.coche_id, comprador_id: @subastum.comprador_id, fecha_compra: @subastum.fecha_compra, fecha_limite: @subastum.fecha_limite, fecha_publicacion: @subastum.fecha_publicacion, puja_id: @subastum.puja_id, valor_compra: @subastum.valor_compra, vendedor_id: @subastum.vendedor_id } }
    end

    assert_redirected_to subastum_url(Subastum.last)
  end

  test "should show subastum" do
    get subastum_url(@subastum)
    assert_response :success
  end

  test "should get edit" do
    get edit_subastum_url(@subastum)
    assert_response :success
  end

  test "should update subastum" do
    patch subastum_url(@subastum), params: { subastum: { coche_id: @subastum.coche_id, comprador_id: @subastum.comprador_id, fecha_compra: @subastum.fecha_compra, fecha_limite: @subastum.fecha_limite, fecha_publicacion: @subastum.fecha_publicacion, puja_id: @subastum.puja_id, valor_compra: @subastum.valor_compra, vendedor_id: @subastum.vendedor_id } }
    assert_redirected_to subastum_url(@subastum)
  end

  test "should destroy subastum" do
    assert_difference('Subastum.count', -1) do
      delete subastum_url(@subastum)
    end

    assert_redirected_to subasta_url
  end
end
