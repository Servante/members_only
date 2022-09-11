require "application_system_test_case"

class TpostsTest < ApplicationSystemTestCase
  setup do
    @tpost = tposts(:one)
  end

  test "visiting the index" do
    visit tposts_url
    assert_selector "h1", text: "Tposts"
  end

  test "should create tpost" do
    visit tposts_url
    click_on "New tpost"

    fill_in "Body", with: @tpost.body
    fill_in "Title", with: @tpost.title
    click_on "Create Tpost"

    assert_text "Tpost was successfully created"
    click_on "Back"
  end

  test "should update Tpost" do
    visit tpost_url(@tpost)
    click_on "Edit this tpost", match: :first

    fill_in "Body", with: @tpost.body
    fill_in "Title", with: @tpost.title
    click_on "Update Tpost"

    assert_text "Tpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Tpost" do
    visit tpost_url(@tpost)
    click_on "Destroy this tpost", match: :first

    assert_text "Tpost was successfully destroyed"
  end
end
