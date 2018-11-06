require 'test_helper'

class TwitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twits_index_url
    assert_response :success
  end

end
