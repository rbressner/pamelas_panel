class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence:true
  validates :password, presence:true
  validates :email, presence:true
  validates :education, presence:true
  has_many :cohorts, through: :cohorts
end
