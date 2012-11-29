require 'test_helper'

class SiteScraperControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
