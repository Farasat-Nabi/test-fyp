require 'test_helper'

class QaControllerTest < ActionController::TestCase
  test "should get qa_view" do
    get :qa_view
    assert_response :success
  end

end
