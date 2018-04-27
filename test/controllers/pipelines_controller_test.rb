require 'test_helper'

class PipelinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pipelines_index_url
    assert_response :success
  end

end
