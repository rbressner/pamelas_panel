class Teacher < ApplicationRecord
  attr_accessor :username, :first_name, :last_name, :age, :email, :password, :education, :salary
  validates :username, presence:true
  validates :password, presence:true
  validates :email, presence:true
  validates :age, numericality:true
  validates_inclusion_of :age, in: 1..150
  has_many :cohorts
end
