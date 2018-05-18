require 'test_helper'

class CohortsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cohorts_index_url
    assert_response :success
  end

end
