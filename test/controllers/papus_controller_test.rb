require 'test_helper'

class PapusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @papu = papus(:one)
  end

  test "should get index" do
    get papus_url
    assert_response :success
  end

  test "should get new" do
    get new_papu_url
    assert_response :success
  end

  test "should create papu" do
    assert_difference('Papu.count') do
      post papus_url, params: { papu: { title: @papu.title, views: @papu.views } }
    end

    assert_redirected_to papu_url(Papu.last)
  end

  test "should show papu" do
    get papu_url(@papu)
    assert_response :success
  end

  test "should get edit" do
    get edit_papu_url(@papu)
    assert_response :success
  end

  test "should update papu" do
    patch papu_url(@papu), params: { papu: { title: @papu.title, views: @papu.views } }
    assert_redirected_to papu_url(@papu)
  end

  test "should destroy papu" do
    assert_difference('Papu.count', -1) do
      delete papu_url(@papu)
    end

    assert_redirected_to papus_url
  end
end
