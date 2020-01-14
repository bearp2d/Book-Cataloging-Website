require 'test_helper'

class Api::BooksubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_booksubscriptions_create_url
    assert_response :success
  end

end
