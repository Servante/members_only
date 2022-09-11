require "test_helper"

class TpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tpost = tposts(:one)
  end

  test "should get index" do
    get tposts_url
    assert_response :success
  end

  test "should get new" do
    get new_tpost_url
    assert_response :success
  end

  test "should create tpost" do
    assert_difference("Tpost.count") do
      post tposts_url, params: { tpost: { body: @tpost.body, title: @tpost.title } }
    end

    assert_redirected_to tpost_url(Tpost.last)
  end

  test "should show tpost" do
    get tpost_url(@tpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_tpost_url(@tpost)
    assert_response :success
  end

  test "should update tpost" do
    patch tpost_url(@tpost), params: { tpost: { body: @tpost.body, title: @tpost.title } }
    assert_redirected_to tpost_url(@tpost)
  end

  test "should destroy tpost" do
    assert_difference("Tpost.count", -1) do
      delete tpost_url(@tpost)
    end

    assert_redirected_to tposts_url
  end
end
