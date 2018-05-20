require "application_system_test_case"

class StudentCohortsTest < ApplicationSystemTestCase
  setup do
    @student_cohort = student_cohorts(:one)
  end

  test "visiting the index" do
    visit student_cohorts_url
    assert_selector "h1", text: "Student Cohorts"
  end

  test "creating a Student cohort" do
    visit student_cohorts_url
    click_on "New Student Cohort"

    fill_in "Cohort", with: @student_cohort.cohort_id
    fill_in "Student", with: @student_cohort.student_id
    click_on "Create Student cohort"

    assert_text "Student cohort was successfully created"
    click_on "Back"
  end

  test "updating a Student cohort" do
    visit student_cohorts_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @student_cohort.cohort_id
    fill_in "Student", with: @student_cohort.student_id
    click_on "Update Student cohort"

    assert_text "Student cohort was successfully updated"
    click_on "Back"
  end

  test "destroying a Student cohort" do
    visit student_cohorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student cohort was successfully destroyed"
  end
end
