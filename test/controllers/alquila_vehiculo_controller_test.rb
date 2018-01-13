require 'test_helper'

class AlquilaVehiculoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alquila_vehiculo_index_url
    assert_response :success
  end

end
