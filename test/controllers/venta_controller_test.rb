require 'test_helper'

class VentaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get venta_index_url
    assert_response :success
  end

end
