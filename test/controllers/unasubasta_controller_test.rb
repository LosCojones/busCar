require 'test_helper'

class UnasubastaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unasubasta_index_url
    assert_response :success
  end

end
