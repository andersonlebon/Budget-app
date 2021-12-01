require "test_helper"

class TransacsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transacs_index_url
    assert_response :success
  end

  test "should get show" do
    get transacs_show_url
    assert_response :success
  end

  test "should get new" do
    get transacs_new_url
    assert_response :success
  end

  test "should get create" do
    get transacs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get transacs_destroy_url
    assert_response :success
  end
end
