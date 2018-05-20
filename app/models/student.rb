class Student < ApplicationRecord
  validates :username, presence:true
  validates :password, presence:true
  validates :email, presence:true
  validates :education, presence:true
  has_many :cohorts
end
