require 'test_helper'

class NewtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newtest = newtests(:one)
  end

  test "should get index" do
    get newtests_url
    assert_response :success
  end

  test "should get new" do
    get new_newtest_url
    assert_response :success
  end

  test "should create newtest" do
    assert_difference('Newtest.count') do
      post newtests_url, params: { newtest: { name: @newtest.name } }
    end

    assert_redirected_to newtest_url(Newtest.last)
  end

  test "should show newtest" do
    get newtest_url(@newtest)
    assert_response :success
  end

  test "should get edit" do
    get edit_newtest_url(@newtest)
    assert_response :success
  end

  test "should update newtest" do
    patch newtest_url(@newtest), params: { newtest: { name: @newtest.name } }
    assert_redirected_to newtest_url(@newtest)
  end

  test "should destroy newtest" do
    assert_difference('Newtest.count', -1) do
      delete newtest_url(@newtest)
    end

    assert_redirected_to newtests_url
  end
end
