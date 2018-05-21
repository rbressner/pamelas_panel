class Cohort < ApplicationRecord
  validates :name, presence:true
  validates :start_date, presence:true
  validates :end_date, presence:true
  belongs_to :course
  has_many :teacher_cohorts
  has_many :cohorts, through: :teacher_cohorts
  has_many :student_cohorts
  has_many :cohorts, through: :student_cohorts

end
