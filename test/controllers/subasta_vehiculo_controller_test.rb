require 'test_helper'

class SubastaVehiculoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subasta_vehiculo_index_url
    assert_response :success
  end

end
