require 'test_helper'

class StudentCohortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_cohort = student_cohorts(:one)
  end

  test "should get index" do
    get student_cohorts_url
    assert_response :success
  end

  test "should get new" do
    get new_student_cohort_url
    assert_response :success
  end

  test "should create student_cohort" do
    assert_difference('StudentCohort.count') do
      post student_cohorts_url, params: { student_cohort: { cohort_id: @student_cohort.cohort_id, student_id: @student_cohort.student_id } }
    end

    assert_redirected_to student_cohort_url(StudentCohort.last)
  end

  test "should show student_cohort" do
    get student_cohort_url(@student_cohort)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_cohort_url(@student_cohort)
    assert_response :success
  end

  test "should update student_cohort" do
    patch student_cohort_url(@student_cohort), params: { student_cohort: { cohort_id: @student_cohort.cohort_id, student_id: @student_cohort.student_id } }
    assert_redirected_to student_cohort_url(@student_cohort)
  end

  test "should destroy student_cohort" do
    assert_difference('StudentCohort.count', -1) do
      delete student_cohort_url(@student_cohort)
    end

    assert_redirected_to student_cohorts_url
  end
end
