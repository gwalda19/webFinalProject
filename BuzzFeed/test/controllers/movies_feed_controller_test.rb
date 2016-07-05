require 'test_helper'

class MoviesFeedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
