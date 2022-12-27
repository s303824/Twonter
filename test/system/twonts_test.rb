require "application_system_test_case"

class TwontsTest < ApplicationSystemTestCase
  setup do
    @twont = twonts(:one)
  end

  test "visiting the index" do
    visit twonts_url
    assert_selector "h1", text: "Twonts"
  end

  test "should create twont" do
    visit twonts_url
    click_on "New twont"

    fill_in "Twont", with: @twont.twont
    click_on "Create Twont"

    assert_text "Twont was successfully created"
    click_on "Back"
  end

  test "should update Twont" do
    visit twont_url(@twont)
    click_on "Edit this twont", match: :first

    fill_in "Twont", with: @twont.twont
    click_on "Update Twont"

    assert_text "Twont was successfully updated"
    click_on "Back"
  end

  test "should destroy Twont" do
    visit twont_url(@twont)
    click_on "Destroy this twont", match: :first

    assert_text "Twont was successfully destroyed"
  end
end
