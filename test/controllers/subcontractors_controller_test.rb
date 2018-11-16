require 'test_helper'

class SubcontractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcontractor = subcontractors(:one)
  end

  test "should get index" do
    get subcontractors_url
    assert_response :success
  end

  test "should get new" do
    get new_subcontractor_url
    assert_response :success
  end

  test "should create subcontractor" do
    assert_difference('Subcontractor.count') do
      post subcontractors_url, params: { subcontractor: { accountname: @subcontractor.accountname, email: @subcontractor.email, fax: @subcontractor.fax, tel: @subcontractor.tel } }
    end

    assert_redirected_to subcontractor_url(Subcontractor.last)
  end

  test "should show subcontractor" do
    get subcontractor_url(@subcontractor)
    assert_response :success
  end

  test "should get edit" do
    get edit_subcontractor_url(@subcontractor)
    assert_response :success
  end

  test "should update subcontractor" do
    patch subcontractor_url(@subcontractor), params: { subcontractor: { accountname: @subcontractor.accountname, email: @subcontractor.email, fax: @subcontractor.fax, tel: @subcontractor.tel } }
    assert_redirected_to subcontractor_url(@subcontractor)
  end

  test "should destroy subcontractor" do
    assert_difference('Subcontractor.count', -1) do
      delete subcontractor_url(@subcontractor)
    end

    assert_redirected_to subcontractors_url
  end
end
