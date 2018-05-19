class Teacher < ApplicationRecord
  validates :username, presence:true
  validates :password, presence:true
  validates :email, presence:true
  has_many :cohorts
  has_many :students
  belongs_to :admin
end
