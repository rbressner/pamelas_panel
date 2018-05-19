class Cohort < ApplicationRecord
  validates :name, presence:true
  validates :start_date, presence:true
  validates :end_date, presence:true
  belongs_to :course
  belongs_to :teacher
  belongs_to :student
end
