require 'test_helper'

class PujasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puja = pujas(:one)
  end

  test "should get index" do
    get pujas_url
    assert_response :success
  end

  test "should get new" do
    get new_puja_url
    assert_response :success
  end

  test "should create puja" do
    assert_difference('Puja.count') do
      post pujas_url, params: { puja: { fecha_puja: @puja.fecha_puja, subasta_id: @puja.subasta_id, user_id: @puja.user_id, valor: @puja.valor } }
    end

    assert_redirected_to puja_url(Puja.last)
  end

  test "should show puja" do
    get puja_url(@puja)
    assert_response :success
  end

  test "should get edit" do
    get edit_puja_url(@puja)
    assert_response :success
  end

  test "should update puja" do
    patch puja_url(@puja), params: { puja: { fecha_puja: @puja.fecha_puja, subasta_id: @puja.subasta_id, user_id: @puja.user_id, valor: @puja.valor } }
    assert_redirected_to puja_url(@puja)
  end

  test "should destroy puja" do
    assert_difference('Puja.count', -1) do
      delete puja_url(@puja)
    end

    assert_redirected_to pujas_url
  end
end
