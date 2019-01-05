require "application_system_test_case"

class PapusTest < ApplicationSystemTestCase
  setup do
    @papu = papus(:one)
  end

  test "visiting the index" do
    visit papus_url
    assert_selector "h1", text: "Papus"
  end

  test "creating a Papu" do
    visit papus_url
    click_on "New Papu"

    fill_in "Title", with: @papu.title
    fill_in "Views", with: @papu.views
    click_on "Create Papu"

    assert_text "Papu was successfully created"
    click_on "Back"
  end

  test "updating a Papu" do
    visit papus_url
    click_on "Edit", match: :first

    fill_in "Title", with: @papu.title
    fill_in "Views", with: @papu.views
    click_on "Update Papu"

    assert_text "Papu was successfully updated"
    click_on "Back"
  end

  test "destroying a Papu" do
    visit papus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Papu was successfully destroyed"
  end
end
