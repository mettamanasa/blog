require 'test_helper'

class SortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sort = sorts(:one)
  end

  test "should get index" do
    get sorts_url
    assert_response :success
  end

  test "should get new" do
    get new_sort_url
    assert_response :success
  end

  test "should create sort" do
    assert_difference('Sort.count') do
      post sorts_url, params: { sort: {  } }
    end

    assert_redirected_to sort_url(Sort.last)
  end

  test "should show sort" do
    get sort_url(@sort)
    assert_response :success
  end

  test "should get edit" do
    get edit_sort_url(@sort)
    assert_response :success
  end

  test "should update sort" do
    patch sort_url(@sort), params: { sort: {  } }
    assert_redirected_to sort_url(@sort)
  end

  test "should destroy sort" do
    assert_difference('Sort.count', -1) do
      delete sort_url(@sort)
    end

    assert_redirected_to sorts_url
  end
end
