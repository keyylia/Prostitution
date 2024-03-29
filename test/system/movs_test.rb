require "application_system_test_case"

class MovsTest < ApplicationSystemTestCase
  setup do
    @mov = movs(:one)
  end

  test "visiting the index" do
    visit movs_url
    assert_selector "h1", text: "Movs"
  end

  test "creating a Mov" do
    visit movs_url
    click_on "New Mov"

    fill_in "Date", with: @mov.date
    fill_in "Description", with: @mov.description
    fill_in "Image", with: @mov.image
    fill_in "Title", with: @mov.title
    click_on "Create Mov"

    assert_text "Mov was successfully created"
    click_on "Back"
  end

  test "updating a Mov" do
    visit movs_url
    click_on "Edit", match: :first

    fill_in "Date", with: @mov.date
    fill_in "Description", with: @mov.description
    fill_in "Image", with: @mov.image
    fill_in "Title", with: @mov.title
    click_on "Update Mov"

    assert_text "Mov was successfully updated"
    click_on "Back"
  end

  test "destroying a Mov" do
    visit movs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mov was successfully destroyed"
  end
end
