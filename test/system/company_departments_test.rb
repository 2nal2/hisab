require "application_system_test_case"

class CompanyDepartmentsTest < ApplicationSystemTestCase
  setup do
    @company_department = company_departments(:one)
  end

  test "visiting the index" do
    visit company_departments_url
    assert_selector "h1", text: "Company Departments"
  end

  test "creating a Company department" do
    visit company_departments_url
    click_on "New Company Department"

    fill_in "Name", with: @company_department.name
    click_on "Create Company department"

    assert_text "Company department was successfully created"
    click_on "Back"
  end

  test "updating a Company department" do
    visit company_departments_url
    click_on "Edit", match: :first

    fill_in "Name", with: @company_department.name
    click_on "Update Company department"

    assert_text "Company department was successfully updated"
    click_on "Back"
  end

  test "destroying a Company department" do
    visit company_departments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company department was successfully destroyed"
  end
end
