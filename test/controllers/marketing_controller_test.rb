require 'test_helper'

class MarketingControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get marketing_home_url
    assert_response :success
  end

end
