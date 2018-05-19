class Cohort < ApplicationRecord
  belongs_to :course
  belongs_to :teacher
  belongs_to :student
end
