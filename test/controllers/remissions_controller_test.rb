require 'test_helper'

class RemissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remission = remissions(:one)
  end

  test "should get index" do
    get remissions_url
    assert_response :success
  end

  test "should get new" do
    get new_remission_url
    assert_response :success
  end

  test "should create remission" do
    assert_difference('Remission.count') do
      post remissions_url, params: { remission: { constancy_id: @remission.constancy_id, date: @remission.date, laboratory_id: @remission.laboratory_id } }
    end

    assert_redirected_to remission_url(Remission.last)
  end

  test "should show remission" do
    get remission_url(@remission)
    assert_response :success
  end

  test "should get edit" do
    get edit_remission_url(@remission)
    assert_response :success
  end

  test "should update remission" do
    patch remission_url(@remission), params: { remission: { constancy_id: @remission.constancy_id, date: @remission.date, laboratory_id: @remission.laboratory_id } }
    assert_redirected_to remission_url(@remission)
  end

  test "should destroy remission" do
    assert_difference('Remission.count', -1) do
      delete remission_url(@remission)
    end

    assert_redirected_to remissions_url
  end
end
