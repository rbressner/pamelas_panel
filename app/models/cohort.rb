class Cohort < ApplicationRecord
  validates :name, presence:true
  validates :start_date, presence:true
  validates :end_date, presence:true
  belongs_to :course
  has_many :teachers, through: :teacher_cohorts
  has_many :students, through: :student_cohorts

end
