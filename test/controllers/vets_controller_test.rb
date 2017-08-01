require 'test_helper'

class VetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vets_index_url
    assert_response :success
  end

  test "should get show" do
    get vets_show_url
    assert_response :success
  end

  test "should get new" do
    get vets_new_url
    assert_response :success
  end

  test "should get create" do
    get vets_create_url
    assert_response :success
  end

  test "should get edit" do
    get vets_edit_url
    assert_response :success
  end

  test "should get update" do
    get vets_update_url
    assert_response :success
  end

end
