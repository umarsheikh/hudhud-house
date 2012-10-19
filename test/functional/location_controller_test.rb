require 'test_helper'

class LocationControllerTest < ActionController::TestCase
  test "should get where_we_are" do
    get :where_we_are
    assert_response :success
  end

end
