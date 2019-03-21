require 'test_helper'

class ConfessesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get confesses_new_url
    assert_response :success
  end

  test "should get create" do
    get confesses_create_url
    assert_response :success
  end

end
