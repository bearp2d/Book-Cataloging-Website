require 'test_helper'

class BooksubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get booksubscriptions_create_url
    assert_response :success
  end

end
