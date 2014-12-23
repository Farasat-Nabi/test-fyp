require 'test_helper'

class HomeControllerControllerTest < ActionController::TestCase
  test "should get home_view" do
    get :home_view
    assert_response :success
  end

end
