require 'test_helper'

class CompanyDepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_department = company_departments(:one)
  end

  test "should get index" do
    get company_departments_url
    assert_response :success
  end

  test "should get new" do
    get new_company_department_url
    assert_response :success
  end

  test "should create company_department" do
    assert_difference('CompanyDepartment.count') do
      post company_departments_url, params: { company_department: { name: @company_department.name } }
    end

    assert_redirected_to company_department_url(CompanyDepartment.last)
  end

  test "should show company_department" do
    get company_department_url(@company_department)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_department_url(@company_department)
    assert_response :success
  end

  test "should update company_department" do
    patch company_department_url(@company_department), params: { company_department: { name: @company_department.name } }
    assert_redirected_to company_department_url(@company_department)
  end

  test "should destroy company_department" do
    assert_difference('CompanyDepartment.count', -1) do
      delete company_department_url(@company_department)
    end

    assert_redirected_to company_departments_url
  end
end
