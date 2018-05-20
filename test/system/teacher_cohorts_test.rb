require "application_system_test_case"

class TeacherCohortsTest < ApplicationSystemTestCase
  setup do
    @teacher_cohort = teacher_cohorts(:one)
  end

  test "visiting the index" do
    visit teacher_cohorts_url
    assert_selector "h1", text: "Teacher Cohorts"
  end

  test "creating a Teacher cohort" do
    visit teacher_cohorts_url
    click_on "New Teacher Cohort"

    fill_in "Cohort", with: @teacher_cohort.cohort_id
    fill_in "Teacher", with: @teacher_cohort.teacher_id
    click_on "Create Teacher cohort"

    assert_text "Teacher cohort was successfully created"
    click_on "Back"
  end

  test "updating a Teacher cohort" do
    visit teacher_cohorts_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @teacher_cohort.cohort_id
    fill_in "Teacher", with: @teacher_cohort.teacher_id
    click_on "Update Teacher cohort"

    assert_text "Teacher cohort was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher cohort" do
    visit teacher_cohorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher cohort was successfully destroyed"
  end
end
