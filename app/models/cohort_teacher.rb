class CohortTeacher < ApplicationRecord
  belongs_to :cohort
  belongs_to :teacher
end
