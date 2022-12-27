require "test_helper"

class TwontsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twont = twonts(:one)
  end

  test "should get index" do
    get twonts_url
    assert_response :success
  end

  test "should get new" do
    get new_twont_url
    assert_response :success
  end

  test "should create twont" do
    assert_difference("Twont.count") do
      post twonts_url, params: { twont: { twont: @twont.twont } }
    end

    assert_redirected_to twont_url(Twont.last)
  end

  test "should show twont" do
    get twont_url(@twont)
    assert_response :success
  end

  test "should get edit" do
    get edit_twont_url(@twont)
    assert_response :success
  end

  test "should update twont" do
    patch twont_url(@twont), params: { twont: { twont: @twont.twont } }
    assert_redirected_to twont_url(@twont)
  end

  test "should destroy twont" do
    assert_difference("Twont.count", -1) do
      delete twont_url(@twont)
    end

    assert_redirected_to twonts_url
  end
end
