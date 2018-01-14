require 'test_helper'

class FaqsControllerTest < ActionDispatch::IntegrationTest
  test "should get faqs" do
    get faqs_faqs_url
    assert_response :success
  end

end
