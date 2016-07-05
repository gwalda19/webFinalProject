require 'test_helper'

class ScienceFeedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
