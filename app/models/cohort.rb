class Cohort < ApplicationRecord
  validates :name, presence:true
  validates :start_date, presence:true
  validates :end_date, presence:true
  belongs_to :course
  has_one :teacher
  has_and_belongs_to_many :students
end
