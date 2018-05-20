class Student < ApplicationRecord
  attr_accessor :username, :first_name, :last_name, :age, :email, :password, :education
  validates :username, presence:true
  validates :password, presence:true
  validates :email, presence:true
  has_many :cohorts
end
