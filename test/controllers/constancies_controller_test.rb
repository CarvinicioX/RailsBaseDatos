require 'test_helper'

class ConstanciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constancy = constancies(:one)
  end

  test "should get index" do
    get constancies_url
    assert_response :success
  end

  test "should get new" do
    get new_constancy_url
    assert_response :success
  end

  test "should create constancy" do
    assert_difference('Constancy.count') do
      post constancies_url, params: { constancy: { pacient_id: @constancy.pacient_id } }
    end

    assert_redirected_to constancy_url(Constancy.last)
  end

  test "should show constancy" do
    get constancy_url(@constancy)
    assert_response :success
  end

  test "should get edit" do
    get edit_constancy_url(@constancy)
    assert_response :success
  end

  test "should update constancy" do
    patch constancy_url(@constancy), params: { constancy: { pacient_id: @constancy.pacient_id } }
    assert_redirected_to constancy_url(@constancy)
  end

  test "should destroy constancy" do
    assert_difference('Constancy.count', -1) do
      delete constancy_url(@constancy)
    end

    assert_redirected_to constancies_url
  end
end
