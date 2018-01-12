require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_url
    assert_response :success
  end

  test "should create rental" do
    assert_difference('Rental.count') do
      post rentals_url, params: { rental: { alquilado_id: @rental.alquilado_id, alquilador_id: @rental.alquilador_id, coche_id: @rental.coche_id, fecha_creacion_anuncio: @rental.fecha_creacion_anuncio, fecha_fin_alquiler: @rental.fecha_fin_alquiler, fecha_fin_anuncio: @rental.fecha_fin_anuncio, fecha_inicio_alquiler: @rental.fecha_inicio_alquiler, precio: @rental.precio } }
    end

    assert_redirected_to rental_url(Rental.last)
  end

  test "should show rental" do
    get rental_url(@rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_url(@rental)
    assert_response :success
  end

  test "should update rental" do
    patch rental_url(@rental), params: { rental: { alquilado_id: @rental.alquilado_id, alquilador_id: @rental.alquilador_id, coche_id: @rental.coche_id, fecha_creacion_anuncio: @rental.fecha_creacion_anuncio, fecha_fin_alquiler: @rental.fecha_fin_alquiler, fecha_fin_anuncio: @rental.fecha_fin_anuncio, fecha_inicio_alquiler: @rental.fecha_inicio_alquiler, precio: @rental.precio } }
    assert_redirected_to rental_url(@rental)
  end

  test "should destroy rental" do
    assert_difference('Rental.count', -1) do
      delete rental_url(@rental)
    end

    assert_redirected_to rentals_url
  end
end
