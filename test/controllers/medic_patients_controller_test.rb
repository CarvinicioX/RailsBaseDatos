require 'test_helper'

class MedicPatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medic_patient = medic_patients(:one)
  end

  test "should get index" do
    get medic_patients_url
    assert_response :success
  end

  test "should get new" do
    get new_medic_patient_url
    assert_response :success
  end

  test "should create medic_patient" do
    assert_difference('MedicPatient.count') do
      post medic_patients_url, params: { medic_patient: { medic_id: @medic_patient.medic_id, patient_id: @medic_patient.patient_id } }
    end

    assert_redirected_to medic_patient_url(MedicPatient.last)
  end

  test "should show medic_patient" do
    get medic_patient_url(@medic_patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_medic_patient_url(@medic_patient)
    assert_response :success
  end

  test "should update medic_patient" do
    patch medic_patient_url(@medic_patient), params: { medic_patient: { medic_id: @medic_patient.medic_id, patient_id: @medic_patient.patient_id } }
    assert_redirected_to medic_patient_url(@medic_patient)
  end

  test "should destroy medic_patient" do
    assert_difference('MedicPatient.count', -1) do
      delete medic_patient_url(@medic_patient)
    end

    assert_redirected_to medic_patients_url
  end
end
