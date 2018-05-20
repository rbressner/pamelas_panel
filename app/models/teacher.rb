class Teacher < ApplicationRecord
  validates :username, presence:true
  validates :password, presence:true
  validates :email, presence:true
  validates :age, numericality:true
  validates_inclusion_of :age, in: 1..150
  has_many :cohorts
  has_many :students
  belongs_to :admin
end
