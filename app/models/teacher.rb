class Teacher < ApplicationRecord
  validates :username, presence:true
  validates :password, presence:true
  validates :email, presence:true
  validates :age, numericality:true
  has_many :cohorts
end
