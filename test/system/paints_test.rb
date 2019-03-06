require "application_system_test_case"

class PaintsTest < ApplicationSystemTestCase
  setup do
    @paint = paints(:one)
  end

  test "visiting the index" do
    visit paints_url
    assert_selector "h1", text: "Paints"
  end

  test "creating a Paint" do
    visit paints_url
    click_on "New Paint"

    fill_in "Date", with: @paint.date
    fill_in "Description", with: @paint.description
    fill_in "Image", with: @paint.image
    fill_in "Title", with: @paint.title
    click_on "Create Paint"

    assert_text "Paint was successfully created"
    click_on "Back"
  end

  test "updating a Paint" do
    visit paints_url
    click_on "Edit", match: :first

    fill_in "Date", with: @paint.date
    fill_in "Description", with: @paint.description
    fill_in "Image", with: @paint.image
    fill_in "Title", with: @paint.title
    click_on "Update Paint"

    assert_text "Paint was successfully updated"
    click_on "Back"
  end

  test "destroying a Paint" do
    visit paints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paint was successfully destroyed"
  end
end
