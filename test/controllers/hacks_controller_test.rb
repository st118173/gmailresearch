require 'test_helper'

class HacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hack = hacks(:one)
  end

  test "should get index" do
    get hacks_url
    assert_response :success
  end

  test "should get new" do
    get new_hack_url
    assert_response :success
  end

  test "should create hack" do
    assert_difference('Hack.count') do
      post hacks_url, params: { hack: { Confirm_new_password: @hack.Confirm_new_password, Current_password: @hack.Current_password, New_password: @hack.New_password } }
    end

    assert_redirected_to hack_url(Hack.last)
  end

  test "should show hack" do
    get hack_url(@hack)
    assert_response :success
  end

  test "should get edit" do
    get edit_hack_url(@hack)
    assert_response :success
  end

  test "should update hack" do
    patch hack_url(@hack), params: { hack: { Confirm_new_password: @hack.Confirm_new_password, Current_password: @hack.Current_password, New_password: @hack.New_password } }
    assert_redirected_to hack_url(@hack)
  end

  test "should destroy hack" do
    assert_difference('Hack.count', -1) do
      delete hack_url(@hack)
    end

    assert_redirected_to hacks_url
  end
end
