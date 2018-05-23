class Cohort < ApplicationRecord
  validates :name, presence:true
  validates :start_date, presence:true
  validates :end_date, presence:true
  belongs_to :course
    has_many :cohort_teachers
    has_many :teachers, through: :cohort_teachers
  has_many :cohort_students
  has_many :students, through: :cohort_students
end
